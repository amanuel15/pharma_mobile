// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i9;
import 'application/util/location/location_cubit.dart' as _i8;
import 'application/util/search_history/search_history_cubit.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/core/i_database_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i5;
import 'infrastructure/core/database/moor_database.dart' as _i7;
import 'infrastructure/core/injectable_module.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.IAuthFacade>(() => _i5.AuthFacade(get<_i3.Dio>()));
  gh.lazySingleton<_i6.IDatabaseFacade>(() => _i7.AppDatabase());
  gh.factory<_i8.LocationCubit>(() => _i8.LocationCubit());
  gh.factory<_i9.PharmacyLocationsCubit>(() => _i9.PharmacyLocationsCubit());
  gh.factory<_i10.SearchHistoryCubit>(
      () => _i10.SearchHistoryCubit(get<_i6.IDatabaseFacade>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i4.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i12.InjectableModule {}
