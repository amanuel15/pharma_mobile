import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationModel extends ChangeNotifier {
  LatLng _location = LatLng(8.1251, 37.551);

  final Location location = new Location();

  LocationModel() {
    setLocation();
    print('location: ******${_location.latitude}');
  }

  //bool _serviceEnabled;
  //PermissionStatus _permissionGranted;
  //LocationData _locationData;

  setLocation() async {
    bool _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    PermissionStatus _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    LocationData _locationData = await location.getLocation();
    _location = LatLng(
        _locationData.latitude ?? 8.9806, _locationData.longitude ?? 38.7578);
  }

  LatLng get currentLocation => _location;
}
