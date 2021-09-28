import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class DrugCard extends StatelessWidget {
  final Drug drug;
  const DrugCard({
    Key? key,
    required this.drug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          GestureDetector(
            onTap: () {
              context.router.push(DrugDetailRoute(
                drug: drug,
              ));
            },
            child: Container(
              height: 193.h,
              child: Card(
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                margin: EdgeInsets.zero,
                elevation: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 30.sw,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(8.r),
                        ),
                        child: Image(
                          image: AssetImage('assets/b.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 2.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                drug.drugName,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              drug.brandName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                drug.drugOrigin,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: drug.rating,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 24.r,
                                  unratedColor: Colors.amber.withAlpha(50),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '(${drug.reviews.length})',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                '${drug.drugPrice} birr',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                drug.createdDate,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                'Availability: ${drug.stock > 0 ? 'In Stock  - ${drug.stock}' : 'Out Of Stock'}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: drug.stock > 0
                                      ? Colors.green[400]
                                      : Colors.red[400],
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
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}

// Container(
//       height: 193.h,
//       child: Card(
//         color: Colors.grey[50],
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//         margin: EdgeInsets.zero,
//         elevation: 1,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Expanded(
//               flex: 2,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.horizontal(
//                   left: Radius.circular(8.r),
//                 ),
//                 child: Image(
//                   image: AssetImage('assets/d.jpg'),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 10.w,
//             ),
//             Expanded(
//               flex: 3,
//               child: Padding(
//                 padding: EdgeInsets.only(
//                   right: 2.w,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
//                           maxLines: 3,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 18.sp,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 3.h,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           'Made in Germany',
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           '⭐⭐⭐⭐',
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 3.h,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           '200.00 birr',
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 18.sp,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 3.h,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           'Aug 12',
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black54,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 3.h),
//                         child: Text(
//                           'Availability: In Stock',
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 12.sp,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     )