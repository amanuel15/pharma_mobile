import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugCard extends StatelessWidget {
  const DrugCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193.h,
      child: Card(
        color: Colors.grey[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        margin: EdgeInsets.zero,
        elevation: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(8.r),
                ),
                child: Image(
                  image: AssetImage('assets/d.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 2.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          'Made in Germany',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          '⭐⭐⭐⭐',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          '200.00 birr',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          'Aug 12',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          'Availability: In Stock',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
