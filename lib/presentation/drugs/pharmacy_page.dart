import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_actor/pharmacy_review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_fetcher/pharmacy_review_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/injection.dart';

class PharmacyPage extends StatelessWidget {
  final Pharmacy pharmacy;
  final User? user;
  const PharmacyPage({Key? key, required this.pharmacy, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PharmacyReviewActorBloc>(
          create: (context) => getIt<PharmacyReviewActorBloc>(),
        ),
        if (user != null) // TODO: Make sure to make reviews not ask user token
          BlocProvider<PharmacyReviewFetcherBloc>(
              create: (context) => getIt<PharmacyReviewFetcherBloc>()
                ..add(PharmacyReviewFetcherEvent.fetchPharmacyReviews(
                    pharmacy.id, user!.token, 0, user!.id, 'Default'))),
      ],
      child: Scaffold(
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
                // autoPlay: true,
                // autoPlayInterval: Duration(seconds: 3),
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
            if (user != null)
              BlocBuilder<PharmacyReviewFetcherBloc,
                  PharmacyReviewFetcherState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Center(
                      child: Text('Initializing...'),
                    ),
                    loadInProgress: (state) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loadSuccess: (state) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return PharmacyReviewCard(
                            review: state.reviews[index],
                            user: user!,
                          );
                        },
                        itemCount: state.reviews.length,
                      );
                    },
                    loadFailure: (state) {
                      return Container(
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            'We were unable to fetch reiews!!!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class PharmacyReviewCard extends StatelessWidget {
  final PharmacyReview review;
  final User user;

  const PharmacyReviewCard({Key? key, required this.review, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: review.userId != user.id ? Colors.grey[100] : Colors.grey[300],
      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 3.h),
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (review.userId == user.id)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'You',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[300],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text(
                                    'Warning',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  content: Text(
                                    'Are you sure you want to delete this review?',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        context
                                            .read<PharmacyReviewActorBloc>()
                                            .add(PharmacyReviewActorEvent
                                                .deleted(review, user.token,
                                                    user.id));
                                      },
                                      child: Text('YES'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('NO'),
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 24.r,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 24.r,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            if (review.userId != user.id)
              Text(
                review.userName,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              'Reviewed on ' + review.creationDate,
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              review.reviewBody.getOrCrash(),
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RatingBarIndicator(
                rating: review.reviewStar.getOrCrash(),
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.green[400],
                ),
                itemCount: 5,
                itemSize: 24.r,
                unratedColor: Colors.green.withAlpha(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
