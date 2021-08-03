import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart';
import 'package:pharma_flutter/application/util/location/location_cubit.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';
import 'package:collection/collection.dart';

class PharmaOverviewPage extends StatelessWidget {
  const PharmaOverviewPage({Key? key}) : super(key: key);

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
          FloatingSearchBarWidget(),
        ],
      ),
    );
  }
}

class FloatingSearchBarWidget extends StatelessWidget {
  const FloatingSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingSearchBarController controller = FloatingSearchBarController();

    return Container(
      constraints: BoxConstraints(maxHeight: 0.8.sh),
      child: BlocProvider<SearchHistoryCubit>(
        create: (context) => SearchHistoryCubit()..getSearchHistory(),
        child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
          //buildWhen: (p, c) => !ListEquality().equals(p.searches, c.searches),
          builder: (context, state) {
            return FloatingSearchBar(
              controller: controller,
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
                if (state.searches.isEmpty)
                  context.read<SearchHistoryCubit>().setTypedTerm(query);
              },
              onSubmitted: (query) {
                BlocProvider.of<SearchHistoryCubit>(context)
                    .addSearchTerm(query);
              },
              transition: CircularFloatingSearchBarTransition(),
              actions: [
                FloatingSearchBarAction(
                  showIfOpened: false,
                  child: CircularButton(
                    icon: const Icon(Icons.place),
                    onPressed: () {
                      //context.router.pushNamed('/sign-in-page');
                      AutoRouter.of(context).push(SignInRoute());
                    },
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
                    child: Builder(
                      builder: (context) {
                        if (state.searches.isEmpty &&
                            controller.query.isEmpty) {
                          return Container(
                            height: 56.h,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              'Start searching...',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          );
                        } else if (state.searches.isEmpty) {
                          return ListTile(
                            title: Text(
                              state.typedTerm,
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: const Icon(Icons.search),
                            onTap: () {
                              context
                                  .read<SearchHistoryCubit>()
                                  .addSearchTerm(controller.query);
                            },
                          );
                        } else {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: state.searches.reversed
                                .map((term) => ListTile(
                                      title: Text(
                                        term,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      leading: const Icon(Icons.history),
                                      trailing: IconButton(
                                        icon: const Icon(Icons.clear),
                                        onPressed: () {
                                          context
                                              .read<SearchHistoryCubit>()
                                              .deleteSearchTerm(term);
                                        },
                                      ),
                                      onTap: () {
                                        context
                                            .read<SearchHistoryCubit>()
                                            .addSearchTerm(term);
                                        controller.close();
                                      },
                                    ))
                                .toList(),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class SearchBodyBuilder extends StatelessWidget {
  const SearchBodyBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Future<Result<Unit, LocationData>> getLocation() async {
//     Location location = new Location();

//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//     LocationData _locationData;

//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return Error(unit);
//       }
//     }

//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return Error(unit);
//       }
//     }

//     _locationData = await location.getLocation();
//     return Success(_locationData);
//   }