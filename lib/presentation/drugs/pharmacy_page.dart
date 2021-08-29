import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:auto_route/auto_route.dart';

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
                  (image) => Container(),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
