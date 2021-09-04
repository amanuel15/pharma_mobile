import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

flashBarWidget(BuildContext context, state) {
  return showFlash(
    context: context,
    duration: const Duration(
      seconds: 3,
    ),
    builder: (context, controller) {
      return Flash.bar(
        controller: controller,
        position: FlashPosition.bottom,
        horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
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
          content: state.reviewFailure.map(
            unableToUpdate: (_) => Text('Impossible error'),
            serverError: (_) => Text('Server Error'),
            unauthorizedAccess: (_) => Text('Insufficient permissions ❌'),
            unexpected: (_) => Text(
                'Unexpected error occured while deleting, please contact support.'),
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
}
