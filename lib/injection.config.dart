// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i8;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i6;
import 'application/util/location/location_cubit.dart' as _i5;
import 'application/util/search_history/search_history_cubit.dart' as _i7;
import 'domain/core/i_database_facade.dart' as _i3;
import 'infrastructure/core/database/moor_database.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDatabaseFacade>(() => _i4.AppDatabase());
  gh.factory<_i5.LocationCubit>(() => _i5.LocationCubit());
  gh.factory<_i6.PharmacyLocationsCubit>(() => _i6.PharmacyLocationsCubit());
  gh.factory<_i7.SearchHistoryCubit>(
      () => _i7.SearchHistoryCubit(get<_i3.IDatabaseFacade>()));
  gh.factory<_i8.SignInFormBloc>(() => _i8.SignInFormBloc());
  return get;
}
