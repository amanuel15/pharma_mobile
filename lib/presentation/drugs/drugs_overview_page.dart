import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart';
import 'package:pharma_flutter/application/util/location/location_cubit.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/injection.dart';

class PharmaOverviewPage extends StatelessWidget {
  const PharmaOverviewPage({Key? key}) : super(key: key);

  Future<Result<Unit, LocationData>> getLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return Error(unit);
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return Error(unit);
      }
    }

    _locationData = await location.getLocation();
    return Success(_locationData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Pharma'),
      // ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          MultiBlocProvider(
            providers: [
              BlocProvider<LocationCubit>(
                create: (BuildContext context) =>
                    getIt<LocationCubit>()..getLocation(),
              ),
              BlocProvider<PharmacyLocationsCubit>(
                create: (BuildContext context) =>
                    getIt<PharmacyLocationsCubit>(),
              ),
            ],
            child: Container(
              constraints: BoxConstraints(
                maxHeight: 0.8.sh,
              ),
              child: BlocBuilder<LocationCubit, LocationState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Loading the map...',
                            )
                          ],
                        ),
                      );
                    },
                    locationLoaded: (state) {
                      return BlocBuilder<PharmacyLocationsCubit,
                          PharmacyLocationsState>(
                        builder: (context, stateB) {
                          return GoogleMap(
                            onMapCreated: (controller) => context
                                .read<PharmacyLocationsCubit>()
                                .getPlaces(),
                            markers: stateB.markers,
                            initialCameraPosition: CameraPosition(
                              target: state.coords,
                              zoom: 15.0,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
          buildFloatingSearchBar(),
        ],
      ),
    );
  }

  Widget buildFloatingSearchBar() {
    //final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      constraints: BoxConstraints(maxHeight: 0.8.sh),
      child: FloatingSearchBar(
        hint: 'Search...',
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: 0.0,
        openAxisAlignment: 0.0,
        width: 600,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {
          // Call your model, bloc, controller here.
        },
        // Specify a custom transition to be used for
        // animating between opened and closed stated.
        transition: CircularFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction(
            showIfOpened: false,
            child: CircularButton(
              icon: const Icon(Icons.place),
              onPressed: () {},
            ),
          ),
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: Colors.accents.map((color) {
                  return Container(height: 112, color: color);
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
