import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/request/request_actor/request_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/request/request_form/request_form_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';
import 'package:pharma_flutter/application/util/location/location_cubit.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationCubit>(
          create: (BuildContext context) =>
              getIt<LocationCubit>()..getLocation(),
        ),
        BlocProvider<AuthBloc>(
          create: (BuildContext context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeMap(
            authenticated: (state) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<SubscriptionFetcherBloc>(
                    create: (BuildContext context) =>
                        getIt<SubscriptionFetcherBloc>()
                          ..add(
                            SubscriptionFetcherEvent.fetchSubscriptions(
                              state.user.token,
                              state.user.id,
                            ),
                          ),
                  ),
                  BlocProvider<RequestFormBloc>(
                    create: (BuildContext context) => getIt<RequestFormBloc>(),
                  ),
                  BlocProvider<RequestActorBloc>(
                    create: (BuildContext context) => getIt<RequestActorBloc>(),
                  ),
                ],
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return ScreenUtilInit(
                      designSize:
                          Size(constraints.maxWidth, constraints.maxHeight),
                      builder: () => MaterialApp.router(
                        title: 'Pharma',
                        debugShowCheckedModeBanner: false,
                        routerDelegate: _appRouter.delegate(),
                        routeInformationParser: _appRouter.defaultRouteParser(),
                        // theme: ThemeData.light().copyWith(
                        //   primaryColor: Colors.orange[700],
                        //   accentColor: Colors.blueAccent,
                        //   floatingActionButtonTheme: FloatingActionButtonThemeData(
                        //     backgroundColor: Colors.blue[900],
                        //   ),
                        //   inputDecorationTheme: InputDecorationTheme(
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //   ),
                        //   textTheme: TextTheme(
                        //     bodyText1: TextStyle(fontSize: 24.sp, color: Colors.black),
                        //     bodyText2: TextStyle(fontSize: 20.sp, color: Colors.black),
                        //   ),
                        // ),
                      ),
                    );
                  },
                ),
              );
            },
            orElse: () => LayoutBuilder(
              builder: (context, constraints) {
                return ScreenUtilInit(
                  designSize: Size(constraints.maxWidth, constraints.maxHeight),
                  builder: () => MaterialApp.router(
                    title: 'Pharma',
                    debugShowCheckedModeBanner: false,
                    routerDelegate: _appRouter.delegate(),
                    routeInformationParser: _appRouter.defaultRouteParser(),
                    // theme: ThemeData.light().copyWith(
                    //   primaryColor: Colors.orange[700],
                    //   accentColor: Colors.blueAccent,
                    //   floatingActionButtonTheme: FloatingActionButtonThemeData(
                    //     backgroundColor: Colors.blue[900],
                    //   ),
                    //   inputDecorationTheme: InputDecorationTheme(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //   ),
                    //   textTheme: TextTheme(
                    //     bodyText1: TextStyle(fontSize: 24.sp, color: Colors.black),
                    //     bodyText2: TextStyle(fontSize: 20.sp, color: Colors.black),
                    //   ),
                    // ),
                  ),
                );
              },
            ),
          );
          // return LayoutBuilder(
          //   builder: (context, constraints) {
          //     return ScreenUtilInit(
          //       designSize: Size(constraints.maxWidth, constraints.maxHeight),
          //       builder: () => MaterialApp.router(
          //         title: 'Pharma',
          //         debugShowCheckedModeBanner: false,
          //         routerDelegate: _appRouter.delegate(),
          //         routeInformationParser: _appRouter.defaultRouteParser(),
          //         // theme: ThemeData.light().copyWith(
          //         //   primaryColor: Colors.orange[700],
          //         //   accentColor: Colors.blueAccent,
          //         //   floatingActionButtonTheme: FloatingActionButtonThemeData(
          //         //     backgroundColor: Colors.blue[900],
          //         //   ),
          //         //   inputDecorationTheme: InputDecorationTheme(
          //         //     border: OutlineInputBorder(
          //         //       borderRadius: BorderRadius.circular(8),
          //         //     ),
          //         //   ),
          //         //   textTheme: TextTheme(
          //         //     bodyText1: TextStyle(fontSize: 24.sp, color: Colors.black),
          //         //     bodyText2: TextStyle(fontSize: 20.sp, color: Colors.black),
          //         //   ),
          //         // ),
          //       ),
          //     );
          //   },
          // );
        },
      ),
    );
  }
}
