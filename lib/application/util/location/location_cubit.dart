import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

@injectable
class LocationCubit extends Cubit<LocationState> {
  //TODO get location from cache
  LatLng _location = LatLng(8.1251, 37.551);

  final Location location = new Location();

  LocationCubit() : super(LocationState.initial());

  Future<void> getLocation() async {
    bool _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        print("service is not enabled");
        emit(LocationState.locationLoaded(_location));
        return;
      }
    }

    PermissionStatus _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        emit(LocationState.locationLoaded(_location));
        return;
      }
    }

    LocationData _locationData = await location.getLocation();
    _location = LatLng(
        _locationData.latitude ?? 8.9806, _locationData.longitude ?? 38.7578);
    print(location);
    emit(LocationState.locationLoaded(_location));
  }
}
