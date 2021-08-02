import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess!.when(
          (error) {
            // FlushbarHelper.createError(
            //   message: failure.map(
            //     cancelledByUser: (_) => 'Cancelled',
            //     serverError: (_) => 'Server error',
            //     emailAlreadyInUse: (_) => 'Email already in use',
            //     invalidEmailAndPasswordCombination: (_) =>
            //         'Invalid email and password combination',
            //   ),
            // ).show(context);
          },
          (_) {
            // ExtendedNavigator.of(context).replace(Routes.OverviewPage);
            // context
            //     .bloc<AuthBloc>()
            //     .add(const AuthEvent.authCheckRequested());
          },
        );
      },
      builder: (context, state) {
        return GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                    vertical: 120.h,
                  ),
                  child: Form(
                    autovalidate: state.showErrorMessages,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50.h),
                        buildEmailField(context),
                        SizedBox(height: 20.h),
                        buildPasswordField(context),
                        buildForgotPassBtn(),
                        buildLoginBtn(context),
                        buildSignUpBtn(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(
          right: 0,
        ),
      ),
      child: Text(
        'Forgot Passowrd?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildSignUpBtn(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an Account? ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  );
}

Widget buildLoginBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25.h),
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        primary: Colors.white,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {
        context.read<SignInFormBloc>().add(
              const SignInFormEvent.signInWithEmailAndPasswordPressed(),
            );
      },
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildEmailField(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.sp),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ]),
        height: 60.h,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.h),
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xff5ac18e),
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
          autocorrect: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.emailChanged(value)),
          validator: (_) =>
              context.read<SignInFormBloc>().state.emailAddress.value.when(
                    (e) => e.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    ],
  );
}

Widget buildPasswordField(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.sp),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ]),
        height: 60.h,
        child: TextFormField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.h),
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xff5ac18e),
            ),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
          autocorrect: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value)),
          validator: (_) =>
              context.read<SignInFormBloc>().state.password.value.when(
                    (e) => e.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    ],
  );
}
