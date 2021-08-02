// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i5;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i4;
import 'application/util/location/location_cubit.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.LocationCubit>(() => _i3.LocationCubit());
  gh.factory<_i4.PharmacyLocationsCubit>(() => _i4.PharmacyLocationsCubit());
  gh.factory<_i5.SignInFormBloc>(() => _i5.SignInFormBloc());
  return get;
}
