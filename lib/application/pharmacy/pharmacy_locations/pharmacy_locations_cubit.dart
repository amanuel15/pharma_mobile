import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

part 'pharmacy_locations_state.dart';
part 'pharmacy_locations_cubit.freezed.dart';

@injectable
class PharmacyLocationsCubit extends Cubit<PharmacyLocationsState> {
  PharmacyLocationsCubit() : super(PharmacyLocationsState.initial());

  Set<Marker> _markers = {};

  //BitmapDescriptor mapMarker;

  // TODO: make this function a [Future] that gets places from the database
  getPlaces() async {
    BitmapDescriptor mapMarker =
        await setCustomMarker(); //* Add a condition to make sure it is not created already
    _markers.add(
      Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(9.0179, 38.7768),
        icon: mapMarker,
      ),
    );
    print('The marker: ***$_markers');
    emit(state.copyWith(markers: _markers));
    print('The state marker: ***${state.markers}');
  }

  Future<BitmapDescriptor> setCustomMarker() async {
    Uint8List uint8list =
        await getBytesFromAsset('assets/pharmacy_marker.png', 96);
    return BitmapDescriptor.fromBytes(uint8list);
  }

  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
