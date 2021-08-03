import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
