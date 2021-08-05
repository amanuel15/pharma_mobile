import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormFieldWidget extends StatelessWidget {
  final String text;
  final TextInputType textInputType;
  final bool obscureText;
  final IconData icon;
  final Function onChanged;
  final Function validator;
  const FormFieldWidget({
    Key? key,
    required this.text,
    required this.textInputType,
    required this.obscureText,
    required this.onChanged,
    required this.validator,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
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
            keyboardType: textInputType,
            obscureText: obscureText,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.h),
              prefixIcon: Icon(
                icon,
                color: Color(0xff5ac18e),
              ),
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),
            autocorrect: false,
            onChanged: (value) => onChanged(value),
            validator: (_) => validator(_),
          ),
        ),
      ],
    );
  }
}
