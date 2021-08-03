import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleSigninBtn extends StatelessWidget {
  final Function func;
  final List<String> type;
  const ToggleSigninBtn({Key? key, required this.func, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => func(),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: type[0],
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: type[1],
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
