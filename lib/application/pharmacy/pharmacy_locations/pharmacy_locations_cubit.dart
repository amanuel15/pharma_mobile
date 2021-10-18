import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_pharmacy_repository.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/markers_failure.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';

part 'pharmacy_locations_state.dart';
part 'pharmacy_locations_cubit.freezed.dart';

@injectable
class PharmacyLocationsCubit extends Cubit<PharmacyLocationsState> {
  final IPharmacyRepository _pharmacyRepository;
  PharmacyLocationsCubit(this._pharmacyRepository)
      : super(PharmacyLocationsState.initial());

  Set<Marker> _markers = {};

  //BitmapDescriptor mapMarker;

  // TODO: make this function a [Future] that gets places from the database
  Future<void> getPlaces(LatLng currentLocation) async {
    // Result<MarkersFailure, Set<Marker>> possiblePharmacies =
    //     await _drugRepository.fetchNearestPharmacies(
    //         radius: 100, location: currentLocation);
    Result<PharmaFailure, List<Pharmacy>> possiblePharmacies =
        await _pharmacyRepository.fetchNearestPharmacies(
      radius: 100,
      location: currentLocation,
    );
    BitmapDescriptor mapMarker = await setCustomMarker();
    possiblePharmacies.when(
      (error) => print("has failed to load pharmacies "),
      (success) {
        success.forEach(
          (pharmacy) {
            _markers.add(
              Marker(
                markerId: MarkerId(pharmacy.id),
                position: LatLng(
                    pharmacy.location[0]['lat'], pharmacy.location[0]['lng']),
                icon: mapMarker,
                infoWindow: InfoWindow(
                  title: pharmacy.pharmacyName,
                  snippet: pharmacy.pharmacyEmail,
                ),
              ),
            );
          },
        );
        emit(
          state.copyWith(
            markers: _markers,
            nearestPharmacies: success,
          ),
        );
      },
    );
    // BitmapDescriptor mapMarker =
    //     await setCustomMarker(); //* Add a condition to make sure it is not created already
    // _markers.add(
    //   Marker(
    //     markerId: MarkerId('id-1'),
    //     position: LatLng(9.0179, 38.7768),
    //     icon: mapMarker,
    //   ),
    // );
    // emit(state.copyWith(markers: _markers, nearestPharmacies: ));
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
