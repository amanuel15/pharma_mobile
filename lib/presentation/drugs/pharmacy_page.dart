import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:pharma_flutter/application/drugs/request/request_form/request_form_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_actor/pharmacy_review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_fetcher/pharmacy_review_fetcher_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_form/pharmacy_review_form_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/flashbar_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_body_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_star_widget.dart';

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
                  pharmacy.id,
                  user!.token,
                  0,
                  user!.id,
                  'Default',
                ))),
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
          child: Builder(
            builder: (context) => ListView(
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
                          showDialog(
                            context: context,
                            builder: (_) {
                              return RequestForm(
                                pharmacy: pharmacy,
                                user: user!,
                                editRequest: null,
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
                SizedBox(
                  height: 5.h,
                ),
                if (user != null)
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
                      onPressed: () async {
                        var updated = await showDialog(
                          context: context,
                          builder: (_) {
                            return PharmacyReviewForm(
                              user: user!,
                              pharmacyId: pharmacy.id,
                            );
                          },
                        );
                        if (updated != null && updated) {
                          context.read<PharmacyReviewFetcherBloc>().add(
                                PharmacyReviewFetcherEvent.fetchPharmacyReviews(
                                  pharmacy.id,
                                  user!.token,
                                  0,
                                  user!.id,
                                  'Default',
                                ),
                              );
                        }
                      },
                      child: Text(
                        'Post A Review!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 5.h,
                ),
                if (user != null)
                  BlocListener<PharmacyReviewActorBloc,
                      PharmacyReviewActorState>(
                    listener: (context, state) {
                      state.maybeMap(
                        deleteFailure: (state) {
                          flashBarWidget(context, state);
                        },
                        deleteSuccess: (state) {
                          context.read<PharmacyReviewFetcherBloc>().add(
                                PharmacyReviewFetcherEvent.fetchPharmacyReviews(
                                  pharmacy.id,
                                  user!.token,
                                  0,
                                  user!.id,
                                  'Default',
                                ),
                              );
                        },
                        orElse: () {},
                      );
                    },
                    child: BlocBuilder<PharmacyReviewFetcherBloc,
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
                                  pharmacy: pharmacy,
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
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PharmacyReviewCard extends StatelessWidget {
  final PharmacyReview review;
  final User user;
  final Pharmacy? pharmacy;

  const PharmacyReviewCard(
      {Key? key, required this.review, required this.user, this.pharmacy})
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
                                                .deleted(
                                              review,
                                              user.token,
                                              user.id,
                                            ));
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
                        onPressed: () async {
                          var updated = await showDialog(
                            context: context,
                            builder: (_) {
                              return PharmacyReviewForm(
                                user: user,
                                editReview: review,
                              );
                            },
                          );
                          if (updated != null && updated) {
                            if (pharmacy != null)
                              context.read<PharmacyReviewFetcherBloc>().add(
                                    PharmacyReviewFetcherEvent
                                        .fetchPharmacyReviews(
                                      pharmacy!.id,
                                      user.token,
                                      0,
                                      user.id,
                                      'Least-Helpful',
                                    ),
                                  );
                            else
                              context.read<PharmacyReviewFetcherBloc>().add(
                                      PharmacyReviewFetcherEvent
                                          .fetchMyPharmacyReviews(
                                    user.token,
                                    0,
                                    user.id,
                                  ));
                          }
                        },
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
    return BlocProvider<RequestFormBloc>.value(
      value: BlocProvider.of<RequestFormBloc>(context)
        ..add(RequestFormEvent.initialized(
          null,
          user.id,
          user.token,
          user.userName,
          pharmacy.id,
          7,
        )),
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
              Navigator.pop(context);
            },
            (success) {
              showFlash(
                context: context,
                duration: const Duration(
                  seconds: 3,
                ),
                builder: (context, controller) {
                  return Flash.bar(
                    controller: controller,
                    position: FlashPosition.bottom,
                    boxShadows: kElevationToShadow[4],
                    horizontalDismissDirection:
                        HorizontalDismissDirection.horizontal,
                    backgroundColor: Colors.green[200],
                    margin: EdgeInsets.all(8.r),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.slowMiddle,
                    child: FlashBar(
                      content: Text('Successfully created a Request'),
                      icon: Icon(
                        Icons.check,
                        // This color is also pulled from the theme. Let's change it to black.
                        color: Colors.green,
                      ),
                      shouldIconPulse: false,
                    ),
                  );
                },
              );
              Navigator.pop(context);
            },
          );
        },
        buildWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting || p.days != c.days,
        builder: (context, state) {
          return AlertDialog(
            title: Text('Request A Drug'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RequestField(),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'The request will last for Days:',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                NumberPicker(
                  value: state.days,
                  minValue: 7,
                  maxValue: 100,
                  step: 1,
                  axis: Axis.horizontal,
                  onChanged: (value) => context
                      .read<RequestFormBloc>()
                      .add(RequestFormEvent.daysChanged(value)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black26),
                  ),
                  itemWidth: 50.w,
                ),
                SizedBox(
                  height: 5.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Pharmacy in question: ',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: pharmacy.pharmacyName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  context
                      .read<RequestFormBloc>()
                      .add(const RequestFormEvent.submitPressed());
                },
                child: Text('Submit'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              ),
            ],
          );
        },
      ),
    );
  }
}

class RequestField extends HookWidget {
  const RequestField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<RequestFormBloc, RequestFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.request.drugName.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Write the Drug Name!',
            hintText: 'Drug Name',
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          maxLength: ReviewBody.maxLength,
          maxLines: 1,
          onChanged: (value) => context
              .read<RequestFormBloc>()
              .add(RequestFormEvent.requestNameChanged(value)),
          validator: (_) =>
              context.read<RequestFormBloc>().state.request.drugName.value.when(
                    (e) => e.maybeMap(
                      empty: (_) => 'Cannot be empty',
                      exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }
}

class PharmacyReviewForm extends StatelessWidget {
  final PharmacyReview? editReview;
  final User user;
  final String? pharmacyId;

  const PharmacyReviewForm(
      {Key? key, this.editReview, required this.user, this.pharmacyId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user);
    return BlocProvider(
      create: (context) => getIt<PharmacyReviewFormBloc>()
        ..add(PharmacyReviewFormEvent.initialized(editReview, user.id,
            user.token, user.userName, pharmacyId ?? editReview!.pharmacyId)),
      child: BlocConsumer<PharmacyReviewFormBloc, PharmacyReviewFormState>(
        listenWhen: (p, c) =>
            p.reviewFailureOrSuccess != c.reviewFailureOrSuccess,
        listener: (context, state) {
          state.reviewFailureOrSuccess?.when(
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
                        'Review Failure!',
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
            (success) {
              Navigator.pop(context, true);
            },
          );
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.r))),
            //padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
            child: Padding(
              padding: EdgeInsets.all(13.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Want to share a review?',
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
                  PharmacyReviewBodyField(),
                  SizedBox(
                    height: 2.h,
                  ),
                  PharmacyReviewStarField(),
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
                        context.read<PharmacyReviewFormBloc>().add(
                            const PharmacyReviewFormEvent.reviewBtnPressed());
                      },
                      child: Text(
                        'Post A Review!',
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
          );
        },
      ),
    );
  }
}
