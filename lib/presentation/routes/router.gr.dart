// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/auth/user.dart' as _i12;
import '../../domain/pharma/drug.dart' as _i11;
import '../../domain/pharma/pharmacy.dart' as _i13;
import '../drugs/drug_detail_page.dart' as _i6;
import '../drugs/drugs_overview_page.dart' as _i3;
import '../drugs/my_requests_page.dart' as _i10;
import '../drugs/my_reviews_page.dart' as _i7;
import '../drugs/my_subscriptions_page.dart' as _i9;
import '../drugs/pharmacy_page.dart' as _i8;
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
        }),
    PharmacyRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PharmacyRouteArgs>();
          return _i8.PharmacyPage(
              key: args.key, pharmacy: args.pharmacy, user: args.user);
        }),
    MySubscriptionsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MySubscriptionsRouteArgs>();
          return _i9.MySubscriptionsPage(key: args.key, user: args.user);
        }),
    MyRequestRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyRequestRouteArgs>();
          return _i10.MyRequestPage(key: args.key, user: args.user);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PharmaOverviewRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(DrugDetailRoute.name, path: '/drug-detail-page'),
        _i1.RouteConfig(MyReviewsRoute.name, path: '/my-reviews-page'),
        _i1.RouteConfig(PharmacyRoute.name, path: '/pharmacy-page'),
        _i1.RouteConfig(MySubscriptionsRoute.name,
            path: '/my-subscriptions-page'),
        _i1.RouteConfig(MyRequestRoute.name, path: '/my-request-page')
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
  DrugDetailRoute({_i2.Key? key, required _i11.Drug drug})
      : super(name,
            path: '/drug-detail-page',
            args: DrugDetailRouteArgs(key: key, drug: drug));

  static const String name = 'DrugDetailRoute';
}

class DrugDetailRouteArgs {
  const DrugDetailRouteArgs({this.key, required this.drug});

  final _i2.Key? key;

  final _i11.Drug drug;
}

class MyReviewsRoute extends _i1.PageRouteInfo<MyReviewsRouteArgs> {
  MyReviewsRoute({_i2.Key? key, required _i12.User user})
      : super(name,
            path: '/my-reviews-page',
            args: MyReviewsRouteArgs(key: key, user: user));

  static const String name = 'MyReviewsRoute';
}

class MyReviewsRouteArgs {
  const MyReviewsRouteArgs({this.key, required this.user});

  final _i2.Key? key;

  final _i12.User user;
}

class PharmacyRoute extends _i1.PageRouteInfo<PharmacyRouteArgs> {
  PharmacyRoute(
      {_i2.Key? key, required _i13.Pharmacy pharmacy, required _i12.User? user})
      : super(name,
            path: '/pharmacy-page',
            args: PharmacyRouteArgs(key: key, pharmacy: pharmacy, user: user));

  static const String name = 'PharmacyRoute';
}

class PharmacyRouteArgs {
  const PharmacyRouteArgs(
      {this.key, required this.pharmacy, required this.user});

  final _i2.Key? key;

  final _i13.Pharmacy pharmacy;

  final _i12.User? user;
}

class MySubscriptionsRoute extends _i1.PageRouteInfo<MySubscriptionsRouteArgs> {
  MySubscriptionsRoute({_i2.Key? key, required _i12.User user})
      : super(name,
            path: '/my-subscriptions-page',
            args: MySubscriptionsRouteArgs(key: key, user: user));

  static const String name = 'MySubscriptionsRoute';
}

class MySubscriptionsRouteArgs {
  const MySubscriptionsRouteArgs({this.key, required this.user});

  final _i2.Key? key;

  final _i12.User user;
}

class MyRequestRoute extends _i1.PageRouteInfo<MyRequestRouteArgs> {
  MyRequestRoute({_i2.Key? key, required _i12.User user})
      : super(name,
            path: '/my-request-page',
            args: MyRequestRouteArgs(key: key, user: user));

  static const String name = 'MyRequestRoute';
}

class MyRequestRouteArgs {
  const MyRequestRouteArgs({this.key, required this.user});

  final _i2.Key? key;

  final _i12.User user;
}
