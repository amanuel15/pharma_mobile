// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i27;
import 'application/drugs/fetch_drug/fetch_drug_bloc.dart' as _i23;
import 'application/drugs/request/request_fetcher/request_fetcher_bloc.dart'
    as _i13;
import 'application/drugs/request/request_form/request_form_bloc.dart' as _i14;
import 'application/drugs/review/pharmacy_review_actor/pharmacy_review_actor_bloc.dart'
    as _i10;
import 'application/drugs/review/pharmacy_review_fetcher/pharmacy_review_fetcher_bloc.dart'
    as _i11;
import 'application/drugs/review/review_actor/review_actor_bloc.dart' as _i15;
import 'application/drugs/review/review_fetcher/review_fetcher_bloc.dart'
    as _i16;
import 'application/drugs/review/review_form/review_form_bloc.dart' as _i17;
import 'application/drugs/search/pharmacy_search/pharmacy_search_bloc.dart'
    as _i12;
import 'application/drugs/search/search_bloc.dart' as _i18;
import 'application/drugs/search/search_result/search_result_bloc.dart' as _i20;
import 'application/drugs/subscription/subscription_actor/subscription_actor_bloc.dart'
    as _i21;
import 'application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart'
    as _i22;
import 'application/pharmacy/bloc/fetch_drug_pharmacy_bloc.dart' as _i24;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i9;
import 'application/util/location/location_cubit.dart' as _i8;
import 'application/util/search_history/search_history_cubit.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i25;
import 'domain/core/i_database_facade.dart' as _i4;
import 'domain/core/i_drug_repository.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i26;
import 'infrastructure/core/database/moor_database.dart' as _i5;
import 'infrastructure/core/injectable_module.dart' as _i29;
import 'infrastructure/drugs/drug_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.IDatabaseFacade>(() => _i5.AppDatabase());
  gh.lazySingleton<_i6.IDrugRepository>(
      () => _i7.DrugRepository(get<_i3.Dio>()));
  gh.factory<_i8.LocationCubit>(() => _i8.LocationCubit());
  gh.factory<_i9.PharmacyLocationsCubit>(
      () => _i9.PharmacyLocationsCubit(get<_i6.IDrugRepository>()));
  gh.factory<_i10.PharmacyReviewActorBloc>(
      () => _i10.PharmacyReviewActorBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i11.PharmacyReviewFetcherBloc>(
      () => _i11.PharmacyReviewFetcherBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i12.PharmacySearchBloc>(
      () => _i12.PharmacySearchBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i13.RequestFetcherBloc>(
      () => _i13.RequestFetcherBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i14.RequestFormBloc>(
      () => _i14.RequestFormBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i15.ReviewActorBloc>(
      () => _i15.ReviewActorBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i16.ReviewFetcherBloc>(
      () => _i16.ReviewFetcherBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i17.ReviewFormBloc>(
      () => _i17.ReviewFormBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i18.SearchBloc>(
      () => _i18.SearchBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i19.SearchHistoryCubit>(
      () => _i19.SearchHistoryCubit(get<_i4.IDatabaseFacade>()));
  gh.factory<_i20.SearchResultBloc>(
      () => _i20.SearchResultBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i21.SubscriptionActorBloc>(
      () => _i21.SubscriptionActorBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i22.SubscriptionFetcherBloc>(
      () => _i22.SubscriptionFetcherBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i23.FetchDrugBloc>(
      () => _i23.FetchDrugBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i24.FetchDrugPharmacyBloc>(
      () => _i24.FetchDrugPharmacyBloc(get<_i6.IDrugRepository>()));
  gh.lazySingleton<_i25.IAuthFacade>(
      () => _i26.AuthFacade(get<_i3.Dio>(), get<_i4.IDatabaseFacade>()));
  gh.factory<_i27.SignInFormBloc>(
      () => _i27.SignInFormBloc(get<_i25.IAuthFacade>()));
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i25.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i29.InjectableModule {}
