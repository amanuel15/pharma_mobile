import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/elevatedbtn_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/email_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/form_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/password_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/toggle_signin_widget.dart';

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
                    //autovalidate: state.showErrorMessages,
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
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
                        //EmailField(),
                        FormFieldWidget(
                          text: 'Email',
                          textInputType: TextInputType.emailAddress,
                          obscureText: false,
                          onChanged: (value) => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.emailChanged(value)),
                          validator: (_) => context
                              .read<SignInFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .when(
                                (e) => e.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          icon: Icons.email,
                        ),
                        SizedBox(height: 20.h),
                        //PasswordField(),
                        FormFieldWidget(
                          text: 'Password',
                          textInputType: TextInputType.text,
                          obscureText: true,
                          onChanged: (value) => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.passwordChanged(value)),
                          validator: (_) => context
                              .read<SignInFormBloc>()
                              .state
                              .password
                              .value
                              .when(
                                (e) => e.maybeMap(
                                  shortPassword: (_) => 'Short Password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          icon: Icons.lock,
                        ),
                        buildForgotPassBtn(),
                        //buildLoginBtn(context),
                        ElevatedBtnWidget(
                          type: 'LOGIN',
                          func: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .signInWithEmailAndPasswordPressed(),
                                );
                          },
                        ),
                        //buildSignUpBtn(context),
                        ToggleSigninBtn(
                          func: () {
                            print('Dont have an account');
                          },
                          type: [
                            'Don\'t have an Account? ',
                            'Sign Up',
                          ],
                        ),
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
}
