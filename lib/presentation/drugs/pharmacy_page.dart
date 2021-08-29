import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmacyPage extends StatelessWidget {
  final Pharmacy pharmacy;
  const PharmacyPage({Key? key, required this.pharmacy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pharmacy.pharmacyName,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
          onPressed: () => context.router.pop(),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
            items: pharmacy.imageUrls
                .map(
                  (image) => Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(pharmacy.locationDescription),
          SizedBox(
            height: 5.h,
          ),
          RatingBarIndicator(
            rating: pharmacy.rating,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 35.r,
            unratedColor: Colors.amber.withAlpha(50),
          ),
        ],
      ),
    );
  }
}
