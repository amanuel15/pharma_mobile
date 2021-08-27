// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/auth/user.dart' as _i9;
import '../../domain/pharma/drug.dart' as _i8;
import '../drugs/drug_detail_page.dart' as _i6;
import '../drugs/drugs_overview_page.dart' as _i3;
import '../drugs/my_reviews_page.dart' as _i7;
import '../sign_in/sign_in_page.dart' as _i4;
import '../sign_in/sign_up_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PharmaOverviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.PharmaOverviewPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignUpPage();
        }),
    DrugDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DrugDetailRouteArgs>();
          return _i6.DrugDetailPage(key: args.key, drug: args.drug);
        }),
    MyReviewsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyReviewsRouteArgs>();
          return _i7.MyReviewsPage(key: args.key, user: args.user);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PharmaOverviewRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(DrugDetailRoute.name, path: '/drug-detail-page'),
        _i1.RouteConfig(MyReviewsRoute.name, path: '/my-reviews-page')
      ];
}

class PharmaOverviewRoute extends _i1.PageRouteInfo {
  const PharmaOverviewRoute() : super(name, path: '/');

  static const String name = 'PharmaOverviewRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

class DrugDetailRoute extends _i1.PageRouteInfo<DrugDetailRouteArgs> {
  DrugDetailRoute({_i2.Key? key, required _i8.Drug drug})
      : super(name,
            path: '/drug-detail-page',
            args: DrugDetailRouteArgs(key: key, drug: drug));

  static const String name = 'DrugDetailRoute';
}

class DrugDetailRouteArgs {
  const DrugDetailRouteArgs({this.key, required this.drug});

  final _i2.Key? key;

  final _i8.Drug drug;
}

class MyReviewsRoute extends _i1.PageRouteInfo<MyReviewsRouteArgs> {
  MyReviewsRoute({_i2.Key? key, required _i9.User user})
      : super(name,
            path: '/my-reviews-page',
            args: MyReviewsRouteArgs(key: key, user: user));

  static const String name = 'MyReviewsRoute';
}

class MyReviewsRouteArgs {
  const MyReviewsRouteArgs({this.key, required this.user});

  final _i2.Key? key;

  final _i9.User user;
}
