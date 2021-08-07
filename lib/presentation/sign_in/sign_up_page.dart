import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sign In'),
      // ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: AnnotatedRegion(
            value: SystemUiOverlayStyle.light,
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
