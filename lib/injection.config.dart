// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i7;
import 'application/util/location/location_cubit.dart' as _i6;
import 'application/util/search_history/search_history_cubit.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/core/i_database_facade.dart' as _i4;
import 'infrastructure/auth/auth_facade.dart' as _i10;
import 'infrastructure/core/database/moor_database.dart' as _i5;
import 'infrastructure/core/injectable_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.IDatabaseFacade>(() => _i5.AppDatabase());
  gh.factory<_i6.LocationCubit>(() => _i6.LocationCubit());
  gh.factory<_i7.PharmacyLocationsCubit>(() => _i7.PharmacyLocationsCubit());
  gh.factory<_i8.SearchHistoryCubit>(
      () => _i8.SearchHistoryCubit(get<_i4.IDatabaseFacade>()));
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.AuthFacade(get<_i3.Dio>(), get<_i4.IDatabaseFacade>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i9.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i13.InjectableModule {}
