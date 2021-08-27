import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
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
            return SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  children: [
                    ProfilePic(user: state.user),
                    SizedBox(height: 20),
                    ProfileMenu(
                      text: "My Account",
                      icon: Icons.person,
                      press: () => {},
                    ),
                    ProfileMenu(
                      text: "Notifications",
                      icon: Icons.notifications,
                      press: () {},
                    ),
                    ProfileMenu(
                      text: "My Reviews",
                      icon: Icons.comment,
                      press: () =>
                          context.router.push(MyReviewsRoute(user: state.user)),
                    ),
                    ProfileMenu(
                      text: "Help Center",
                      icon: Icons.help,
                      press: () {},
                    ),
                    ProfileMenu(
                      text: "Log Out",
                      icon: Icons.logout,
                      press: () => context
                          .read<AuthBloc>()
                          .add(const AuthEvent.signedOut()),
                    ),
                  ],
                ),
              ),
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

class ProfileMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback press;

  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF1F2F5),
        onPressed: press,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  final User user;
  const ProfilePic({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.r,
      width: 115.r,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFE1E2E5),
            child: Text(
              user.userName[0],
              style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
