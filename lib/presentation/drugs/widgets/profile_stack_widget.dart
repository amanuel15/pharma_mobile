import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';

class ProfileStackWidget extends StatelessWidget {
  const ProfileStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          initial: (state) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          authenticated: (state) {
            return Center(
              child: Text('Profile page'),
            );
          },
          unauthenticated: (state) {
            return Center(
              child: ElevatedButton(
                child: Text(
                  'SignIn',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => context.router.push(SignInRoute()),
              ),
            );
          },
        );
      },
    );
  }
}
