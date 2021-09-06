import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/application/drugs/request/request_form/request_form_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_actor/pharmacy_review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_fetcher/pharmacy_review_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_body_widget.dart';

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
        if (pharmacy.acceptsRequests && user != null)
          BlocProvider<RequestFormBloc>(
            create: (context) => getIt<RequestFormBloc>()
              ..add(RequestFormEvent.initialized(
                  null, user!.id, user!.token, user!.userName, pharmacy.id)),
          ),
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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(pharmacy.locationDescription),
                  if (pharmacy.acceptsRequests && user != null)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[300],
                      ),
                      onPressed: () {
                        RequestFormBloc requestFormBloc =
                            BlocProvider.of<RequestFormBloc>(context);
                        showDialog(
                          context: context,
                          builder: (_) {
                            return BlocProvider<RequestFormBloc>.value(
                              value: BlocProvider.of<RequestFormBloc>(context),
                              child: BlocConsumer<RequestFormBloc,
                                  RequestFormState>(
                                listenWhen: (p, c) =>
                                    p.requestFailureOrSuccess !=
                                    c.requestFailureOrSuccess,
                                listener: (context, state) {
                                  state.requestFailureOrSuccess!.when(
                                    (failure) {
                                      showFlash(
                                        context: context,
                                        duration: const Duration(
                                          seconds: 3,
                                        ),
                                        builder: (context, controller) {
                                          return Flash.bar(
                                            controller: controller,
                                            position: FlashPosition.bottom,
                                            horizontalDismissDirection:
                                                HorizontalDismissDirection
                                                    .startToEnd,
                                            margin: EdgeInsets.all(8.r),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.r)),
                                            forwardAnimationCurve:
                                                Curves.easeOutBack,
                                            reverseAnimationCurve:
                                                Curves.slowMiddle,
                                            backgroundColor: Colors.amber,
                                            child: FlashBar(
                                              title: Text(
                                                'Request Failure!',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              content: failure.map(
                                                unauthorizedAccess: (_) => Text(
                                                    'It seems you don\'t have access!'),
                                                serverError: (_) =>
                                                    Text('Server Error!'),
                                                unableToUpdate: (_) => Text(
                                                    'Could not perform operation!'),
                                                unexpected: (_) =>
                                                    Text('Unexpected Error!'),
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
                                    },
                                    (success) => null,
                                  );
                                },
                                buildWhen: (p, c) =>
                                    p.isSubmitting != c.isSubmitting,
                                builder: (context, state) {
                                  return Container(
                                    //padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
                                    height: 50.sh,
                                    child: Card(
                                      elevation: 2,
                                      color: Colors.grey[100],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(13.r),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Want to requst a drug?',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            ReviewBodyField(),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 15.h),
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 1,
                                                  primary: Colors.green[300],
                                                  padding: EdgeInsets.all(15),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  context
                                                      .read<RequestFormBloc>()
                                                      .add(
                                                          const RequestFormEvent
                                                              .submitPressed());
                                                },
                                                child: Text(
                                                  'Request a Drug!',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Request a drug',
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: RatingBarIndicator(
                  rating: pharmacy.rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 35.r,
                  unratedColor: Colors.amber.withAlpha(50),
                ),
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

class RequestForm extends StatelessWidget {
  final Request? editRequest;
  final User user;
  final Pharmacy pharmacy;
  const RequestForm(
      {Key? key, required this.user, required this.pharmacy, this.editRequest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestFormBloc>(
      create: (context) => getIt<RequestFormBloc>()
        ..add(RequestFormEvent.initialized(
            editRequest, user.id, user.token, user.userName, pharmacy.id)),
      child: BlocConsumer<RequestFormBloc, RequestFormState>(
        listenWhen: (p, c) =>
            p.requestFailureOrSuccess != c.requestFailureOrSuccess,
        listener: (context, state) {
          state.requestFailureOrSuccess!.when(
            (failure) {
              showFlash(
                context: context,
                duration: const Duration(
                  seconds: 3,
                ),
                builder: (context, controller) {
                  return Flash.bar(
                    controller: controller,
                    position: FlashPosition.bottom,
                    horizontalDismissDirection:
                        HorizontalDismissDirection.startToEnd,
                    margin: EdgeInsets.all(8.r),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.slowMiddle,
                    backgroundColor: Colors.amber,
                    child: FlashBar(
                      title: Text(
                        'Request Failure!',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: failure.map(
                        unauthorizedAccess: (_) =>
                            Text('It seems you don\'t have access!'),
                        serverError: (_) => Text('Server Error!'),
                        unableToUpdate: (_) =>
                            Text('Could not perform operation!'),
                        unexpected: (_) => Text('Unexpected Error!'),
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
            },
            (success) => null,
          );
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Container(
            //padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
            height: 50.sh,
            child: Card(
              elevation: 2,
              color: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(13.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Want to requst a drug?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ReviewBodyField(),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 1,
                          primary: Colors.green[300],
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {
                          context
                              .read<RequestFormBloc>()
                              .add(const RequestFormEvent.submitPressed());
                        },
                        child: Text(
                          'Request a Drug!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
