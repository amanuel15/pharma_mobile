import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatelessWidget {
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
            child: SignInForm(),
          ),
        ),
      ),
    );
  }
}

// Scaffold(
//   body: AnnotatedRegion(
//     value: SystemUiOverlayStyle.light,
//     child: GestureDetector(
//       child: Stack(
//         children: <Widget>[
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(0x665ac18e),
//                   Color(0x995ac18e),
//                   Color(0xcc5ac18e),
//                   Color(0xff5ac18e),
//                 ],
//               ),
//             ),
//             child: SingleChildScrollView(
//               physics: AlwaysScrollableScrollPhysics(),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 25.w,
//                 vertical: 120.h,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     'Sign In',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 40.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 50.h),
//                   buildEmailField(),
//                   SizedBox(height: 20.h),
//                   buildPasswordField(),
//                   buildForgotPassBtn(),
//                   buildLoginBtn(),
//                   buildSignUpBtn(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// );