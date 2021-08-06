import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: LayoutBuilder(
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
  }
}
