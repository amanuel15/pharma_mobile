import 'package:cached_network_image/cached_network_image.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_actor/review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_fetcher/review_fetcher_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_actor/subscription_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart';
import 'package:pharma_flutter/application/pharmacy/bloc/fetch_drug_pharmacy_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/flashbar_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_body_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_star_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';

class DrugDetailPage extends StatelessWidget {
  final Drug drug;
  const DrugDetailPage({
    Key? key,
    required this.drug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, stateAuth) {
        User? user = stateAuth.maybeWhen(
          authenticated: (user) => user,
          orElse: () => null,
        );
        return MultiBlocProvider(
          providers: [
            BlocProvider<ReviewActorBloc>(
              create: (context) => getIt<ReviewActorBloc>(),
            ),
            if (user != null)
              BlocProvider<ReviewFetcherBloc>(
                  create: (context) => getIt<ReviewFetcherBloc>()
                    ..add(
                      ReviewFetcherEvent.fetchReviews(
                        drug.id,
                        user.token,
                        0,
                        user.id,
                        'Least-Helpful',
                      ),
                    )),
            BlocProvider<FetchDrugPharmacyBloc>(
              create: (context) => getIt<FetchDrugPharmacyBloc>()
                ..add(
                  FetchDrugPharmacyEvent.fetchPharmacy(drug.pharmacyId),
                ),
            ),
            BlocProvider<SubscriptionActorBloc>(
              create: (context) => getIt<SubscriptionActorBloc>(),
            ),
          ],
          child: Scaffold(
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  padding: EdgeInsets.all(5.r),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: ListView(
                    children: [
                      Text(
                        drug.drugName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8.r),
                        ),
                        child: Image(
                          image: AssetImage('assets/d.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              drug.drugDetail,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                          if (drug.stock == 0)
                            stateAuth.maybeMap(
                              authenticated: (authState) {
                                return BlocBuilder<SubscriptionFetcherBloc,
                                    SubscriptionFetcherState>(
                                  builder: (context, featcherState) {
                                    return BlocConsumer<SubscriptionActorBloc,
                                        SubscriptionActorState>(
                                      listener: (context, state) {
                                        state.maybeMap(
                                          actionFailure: (state) {
                                            flashBarWidget(context, state);
                                          },
                                          actionSuccess: (state) => context
                                              .read<SubscriptionFetcherBloc>()
                                              .add(
                                                SubscriptionFetcherEvent
                                                    .fetchSubscriptions(
                                                        authState.user.token,
                                                        authState.user.id),
                                              ),
                                          orElse: () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        bool disableButton = state.maybeMap(
                                          actionInProgress: (_) => true,
                                          orElse: () => false,
                                        );
                                        bool isSubbed = false;
                                        String subscriptionId = '';
                                        List<Subscription> subs =
                                            featcherState.maybeWhen(
                                          loadSuccess: (subs) => subs,
                                          orElse: () => [],
                                        );
                                        subs.forEach(
                                          (e) {
                                            if (e.drugId == drug.id)
                                              isSubbed = true;
                                            subscriptionId = e.id;
                                          },
                                        );
                                        if (isSubbed)
                                          return ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 2,
                                              primary: Colors.grey[400],
                                              padding: EdgeInsets.all(15),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            onPressed: disableButton
                                                ? null
                                                : () {
                                                    context
                                                        .read<
                                                            SubscriptionActorBloc>()
                                                        .add(
                                                          SubscriptionActorEvent
                                                              .unsubscribed(
                                                            subscriptionId,
                                                            authState
                                                                .user.token,
                                                            authState.user.id,
                                                          ),
                                                        );
                                                  },
                                            child: Text(
                                              'Unsubscribe',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          );
                                        else
                                          return ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 2,
                                              primary: Colors.green[400],
                                              padding: EdgeInsets.all(15),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            onPressed: disableButton
                                                ? null
                                                : () {
                                                    context
                                                        .read<
                                                            SubscriptionActorBloc>()
                                                        .add(
                                                          SubscriptionActorEvent
                                                              .subscribed(
                                                            drug.id,
                                                            21,
                                                            authState
                                                                .user.token,
                                                            authState.user.id,
                                                          ),
                                                        );
                                                  },
                                            child: Text(
                                              'Subscribe',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          );
                                      },
                                    );
                                  },
                                );
                              },
                              orElse: () => SizedBox.shrink(),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      BlocBuilder<FetchDrugPharmacyBloc,
                          FetchDrugPharmacyState>(
                        builder: (context, state) {
                          return state.map(
                            initial: (state) => SizedBox.shrink(),
                            loadSuccess: (state) {
                              return BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, stateA) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                    ),
                                    child: FlatButton(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0.w,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: Color(0xFFF1FFF5),
                                      onPressed: () {
                                        context.router.push(
                                          PharmacyRoute(
                                            pharmacy: state.pharmacy,
                                            user: stateA.maybeWhen(
                                              authenticated: (state) => state,
                                              orElse: () => null,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ListTile(
                                        leading: SizedBox(
                                          height: 50.r,
                                          width: 50.r,
                                          child: Stack(
                                            fit: StackFit.expand,
                                            overflow: Overflow.visible,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor:
                                                    Color(0xFFE1E2E5),
                                                child: Text(
                                                  state
                                                      .pharmacy.pharmacyName[0],
                                                  style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        title: Text(
                                          state.pharmacy.pharmacyName,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        subtitle: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.pharmacy.pharmacyEmail,
                                            ),
                                            RatingBarIndicator(
                                              rating: state.pharmacy.rating,
                                              itemBuilder: (context, index) =>
                                                  Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              itemCount: 5,
                                              itemSize: 18.r,
                                              unratedColor:
                                                  Colors.amber.withAlpha(50),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            loadFailure: (state) {
                              return Text(
                                'It seems we weren\'t able to get the pharmacy info',
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      stateAuth.maybeMap(
                        authenticated: (stateAuth) {
                          return Column(
                            children: [
                              ReviewForm(
                                user: stateAuth.user,
                                drugId: drug.id,
                              ),
                              BlocListener<ReviewActorBloc, ReviewActorState>(
                                listener: (context, state) {
                                  state.maybeMap(
                                    deleteFailure: (state) {
                                      flashBarWidget(context, state);
                                    },
                                    deleteSuccess: (state) {
                                      context.read<ReviewFetcherBloc>().add(
                                            ReviewFetcherEvent.fetchReviews(
                                              drug.id,
                                              stateAuth.user.token,
                                              0,
                                              stateAuth.user.id,
                                              'Least-Helpful',
                                            ),
                                          );
                                    },
                                    orElse: () {},
                                  );
                                },
                                child: BlocBuilder<ReviewFetcherBloc,
                                    ReviewFetcherState>(
                                  builder: (context, state) {
                                    return state.map(
                                      initial: (_) => Container(
                                        child: Text(
                                          'SignIn to see reviews',
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      loadInProgress: (state) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      loadSuccess: (state) {
                                        return Column(children: [
                                          ...state.reviews
                                              .map((review) => ReviewCard(
                                                    review: review,
                                                    user: stateAuth.user,
                                                    drug: drug,
                                                  ))
                                              .toList()
                                        ]);
                                        // return ListView.builder(
                                        //   shrinkWrap: true,
                                        //   itemBuilder: (context, index) {
                                        //     return ReviewCard(review: state.reviews[index]);
                                        //   },
                                        //   itemCount: state.reviews.length,
                                        // );
                                      },
                                      loadFailure: (state) {
                                        return Center(
                                          child:
                                              Text('Failure loading reviews'),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                        orElse: () => SizedBox.shrink(),
                      )

                      // ReviewCard(
                      //   review: Review(
                      //     id: '6asd67adsad',
                      //     userId: 'sdfsd454fdgfdg',
                      //     reviewBody: ReviewBody(
                      //         'The best drug ever! im sooo high right now'),
                      //     userName: 'John Tadmen',
                      //     reviewStar: ReviewStar(3.5),
                      //     drugId: 'drugId',
                      //     pharmacyId: 'pharmacyId',
                      //     creationDate: 'Aug 8, 2020',
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Uri _buildUrl(List<Map<String, dynamic>> location) {
    return Uri(
        scheme: 'https',
        host: 'maps.googleapis.com',
        port: 443,
        path: '/maps/api/staticmap',
        queryParameters: {
          'size': '600x400',
          'center': '${location[0]['lat']},${location[0]['lng']}',
          'zoom': '4',
          'AIzaSyAyeGr8Z1BUkr-0AetzUU5Q18FvjJz4hNU': '',
          'markers': '${location[0]['lat']},${location[0]['lng']}',
        });
  }
}

class ReviewCard extends StatelessWidget {
  final Review review;
  final User user;
  final Drug? drug;

  const ReviewCard(
      {Key? key, required this.review, required this.user, this.drug})
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
                                          .read<ReviewActorBloc>()
                                          .add(ReviewActorEvent.deleted(
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
                            },
                          );
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
                              return ReviewForm(
                                user: user,
                                editReview: review,
                              );
                            },
                          );
                          if (updated != null && updated) {
                            if (drug != null)
                              context.read<ReviewFetcherBloc>().add(
                                    ReviewFetcherEvent.fetchReviews(
                                      review.id,
                                      user.token,
                                      0,
                                      user.id,
                                      'Least-Helpful',
                                    ),
                                  );
                            else
                              context
                                  .read<ReviewFetcherBloc>()
                                  .add(ReviewFetcherEvent.fetchMyReviews(
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

class ReviewForm extends StatelessWidget {
  final Review? editReview;
  final User user;
  final String? drugId;

  const ReviewForm({Key? key, this.editReview, required this.user, this.drugId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user);
    return BlocProvider(
      create: (context) => getIt<ReviewFormBloc>()
        ..add(ReviewFormEvent.initialized(editReview, user.id, user.token,
            user.userName, drugId ?? editReview!.drugId)),
      child: BlocConsumer<ReviewFormBloc, ReviewFormState>(
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
                  ReviewBodyField(),
                  SizedBox(
                    height: 2.h,
                  ),
                  ReviewStarField(),
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
                            .read<ReviewFormBloc>()
                            .add(const ReviewFormEvent.reviewBtnPressed());
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
