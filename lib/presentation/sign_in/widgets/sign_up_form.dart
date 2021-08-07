import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/elevatedbtn_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/form_field_widget.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/toggle_signin_widget.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.when(
          (failure) {
            showFlash(
              context: context,
              duration: const Duration(
                seconds: 3,
              ),
              builder: (context, controller) {
                return Flash.bar(
                  controller: controller,
                  position: FlashPosition.bottom,
                  horizontalDismissDirection:
                      HorizontalDismissDirection.startToEnd,
                  margin: EdgeInsets.all(8.r),
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  forwardAnimationCurve: Curves.easeOutBack,
                  reverseAnimationCurve: Curves.slowMiddle,
                  backgroundColor: Colors.amber,
                  child: FlashBar(
                    title: Text(
                      'SignIn Failure!',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: failure.map(
                      cancelledByUser: (_) => Text('Cancelled'),
                      serverError: (_) => Text('Server Error'),
                      emailAlreadyInUse: (_) => Text('Email alreadty in use'),
                      invalidEmailAndPasswordCombination: (_) =>
                          Text('Invalid email and password combination'),
                      emailAddressNotVerified: (_) => Text(
                        'Please verify your email by checking your email',
                      ),
                    ),
                    icon: Icon(
                      Icons.warning,
                      // This color is also pulled from the theme. Let's change it to black.
                      color: Colors.black,
                    ),
                    shouldIconPulse: false,
                  ),
                );
              },
            );
          },
          (success) {
            success.when(
              (user) => context.router.pop(),
              (_) => AutoRouter.of(context).replace(SignInRoute()),
            );
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
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
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        FormFieldWidget(
                          text: 'Username',
                          textInputType: TextInputType.text,
                          obscureText: false,
                          onChanged: (value) => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.nameChanged(value)),
                          validator: (_) => context
                              .read<SignInFormBloc>()
                              .state
                              .userName
                              .value
                              .when(
                                (e) => e.maybeMap(
                                  empty: (_) => 'Username required',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          icon: Icons.person,
                          passwordVisiblility: () {},
                        ),
                        SizedBox(height: 20.h),
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
                          passwordVisiblility: () {},
                        ),
                        SizedBox(height: 20.h),
                        FormFieldWidget(
                          text: 'Password',
                          textInputType: TextInputType.text,
                          obscureText: !state.showPassword,
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
                          passwordVisiblility: () => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.togglePassword()),
                        ),
                        SizedBox(height: 20.h),
                        ElevatedBtnWidget(
                          type: 'SIGNUP',
                          func: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .registerWithEmailAndPasswordPressed(),
                                );
                          },
                        ),
                        //buildSignUpBtn(context),
                        ToggleSigninBtn(
                          func: () {
                            AutoRouter.of(context).replace(SignInRoute());
                            print('Dont have an account');
                          },
                          type: [
                            'Have an Account? ',
                            'Sign In',
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
}
