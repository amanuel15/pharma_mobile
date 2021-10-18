// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i40;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i39;
import 'application/drugs/fetch_drug/fetch_drug_bloc.dart' as _i35;
import 'application/drugs/request/request_actor/request_actor_bloc.dart'
    as _i24;
import 'application/drugs/request/request_fetcher/request_fetcher_bloc.dart'
    as _i25;
import 'application/drugs/request/request_form/request_form_bloc.dart' as _i26;
import 'application/drugs/review/pharmacy_review_actor/pharmacy_review_actor_bloc.dart'
    as _i20;
import 'application/drugs/review/pharmacy_review_fetcher/pharmacy_review_fetcher_bloc.dart'
    as _i21;
import 'application/drugs/review/pharmacy_review_form/pharmacy_review_form_bloc.dart'
    as _i22;
import 'application/drugs/review/review_actor/review_actor_bloc.dart' as _i27;
import 'application/drugs/review/review_fetcher/review_fetcher_bloc.dart'
    as _i28;
import 'application/drugs/review/review_form/review_form_bloc.dart' as _i29;
import 'application/drugs/search/pharmacy_search/pharmacy_search_bloc.dart'
    as _i23;
import 'application/drugs/search/search_bloc.dart' as _i30;
import 'application/drugs/search/search_result/search_result_bloc.dart' as _i32;
import 'application/drugs/subscription/subscription_actor/subscription_actor_bloc.dart'
    as _i33;
import 'application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart'
    as _i34;
import 'application/pharmacy/bloc/fetch_drug_pharmacy_bloc.dart' as _i36;
import 'application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart'
    as _i19;
import 'application/util/location/location_cubit.dart' as _i18;
import 'application/util/search_history/search_history_cubit.dart' as _i31;
import 'domain/auth/i_auth_facade.dart' as _i37;
import 'domain/core/i_database_facade.dart' as _i4;
import 'domain/core/i_drug_repository.dart' as _i6;
import 'domain/core/i_pharmacy_repository.dart' as _i8;
import 'domain/core/i_request_repository.dart' as _i10;
import 'domain/core/i_review_repository.dart' as _i12;
import 'domain/core/i_search_repository.dart' as _i14;
import 'domain/core/i_subscription_repository.dart' as _i16;
import 'infrastructure/auth/auth_facade.dart' as _i38;
import 'infrastructure/core/database/moor_database.dart' as _i5;
import 'infrastructure/core/injectable_module.dart' as _i41;
import 'infrastructure/repositories/drug_repository.dart' as _i7;
import 'infrastructure/repositories/pharmacy_repository.dart' as _i9;
import 'infrastructure/repositories/request_repository.dart' as _i11;
import 'infrastructure/repositories/review_repository.dart' as _i13;
import 'infrastructure/repositories/search_repository.dart' as _i15;
import 'infrastructure/repositories/subscription_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IPharmacyRepository>(
      () => _i9.PharmacyRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i10.IRequestRepository>(
      () => _i11.RequestRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i12.IReviewRepository>(
      () => _i13.ReviewRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i14.ISearchRepository>(
      () => _i15.SearchRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i16.ISubscriptionRepository>(
      () => _i17.SubscriptionRepository(get<_i3.Dio>()));
  gh.factory<_i18.LocationCubit>(() => _i18.LocationCubit());
  gh.factory<_i19.PharmacyLocationsCubit>(
      () => _i19.PharmacyLocationsCubit(get<_i8.IPharmacyRepository>()));
  gh.factory<_i20.PharmacyReviewActorBloc>(
      () => _i20.PharmacyReviewActorBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i21.PharmacyReviewFetcherBloc>(
      () => _i21.PharmacyReviewFetcherBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i22.PharmacyReviewFormBloc>(
      () => _i22.PharmacyReviewFormBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i23.PharmacySearchBloc>(
      () => _i23.PharmacySearchBloc(get<_i14.ISearchRepository>()));
  gh.factory<_i24.RequestActorBloc>(
      () => _i24.RequestActorBloc(get<_i10.IRequestRepository>()));
  gh.factory<_i25.RequestFetcherBloc>(
      () => _i25.RequestFetcherBloc(get<_i10.IRequestRepository>()));
  gh.factory<_i26.RequestFormBloc>(
      () => _i26.RequestFormBloc(get<_i10.IRequestRepository>()));
  gh.factory<_i27.ReviewActorBloc>(
      () => _i27.ReviewActorBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i28.ReviewFetcherBloc>(
      () => _i28.ReviewFetcherBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i29.ReviewFormBloc>(
      () => _i29.ReviewFormBloc(get<_i12.IReviewRepository>()));
  gh.factory<_i30.SearchBloc>(
      () => _i30.SearchBloc(get<_i14.ISearchRepository>()));
  gh.factory<_i31.SearchHistoryCubit>(
      () => _i31.SearchHistoryCubit(get<_i4.IDatabaseFacade>()));
  gh.factory<_i32.SearchResultBloc>(
      () => _i32.SearchResultBloc(get<_i14.ISearchRepository>()));
  gh.factory<_i33.SubscriptionActorBloc>(
      () => _i33.SubscriptionActorBloc(get<_i16.ISubscriptionRepository>()));
  gh.factory<_i34.SubscriptionFetcherBloc>(
      () => _i34.SubscriptionFetcherBloc(get<_i16.ISubscriptionRepository>()));
  gh.factory<_i35.FetchDrugBloc>(
      () => _i35.FetchDrugBloc(get<_i6.IDrugRepository>()));
  gh.factory<_i36.FetchDrugPharmacyBloc>(
      () => _i36.FetchDrugPharmacyBloc(get<_i8.IPharmacyRepository>()));
  gh.lazySingleton<_i37.IAuthFacade>(
      () => _i38.AuthFacade(get<_i3.Dio>(), get<_i4.IDatabaseFacade>()));
  gh.factory<_i39.SignInFormBloc>(
      () => _i39.SignInFormBloc(get<_i37.IAuthFacade>()));
  gh.factory<_i40.AuthBloc>(() => _i40.AuthBloc(get<_i37.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i41.InjectableModule {}
