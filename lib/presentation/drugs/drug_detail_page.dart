import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/bloc/review_fetcher_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_actor/review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/review_star_widget.dart';

class DrugDetailPage extends StatelessWidget {
  final Drug drug;
  const DrugDetailPage({Key? key, required this.drug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ReviewActorBloc>(
          create: (context) => getIt<ReviewActorBloc>(),
        ),
        BlocProvider<ReviewFetcherBloc>(
            create: (context) => getIt<ReviewFetcherBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ReviewActorBloc, ReviewActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
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
                            'SignIn Failure!',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: state.reviewFailure.map(
                            unableToUpdate: (_) => Text('Impossible error'),
                            serverError: (_) => Text('Server Error'),
                            unauthorizedAccess: (_) =>
                                Text('Insufficient permissions ❌'),
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
                },
                orElse: () {},
              );
            },
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
                    Text(
                      drug.drugDetail,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          authenticated: (state) {
                            context.read<ReviewFetcherBloc>().add(
                                  ReviewFetcherEvent.fetchReviews(
                                    drug.id,
                                    state.user.token,
                                    0,
                                    state.user.id,
                                    'Least-Helpful',
                                  ),
                                );
                            return Column(
                              children: [
                                ReviewForm(),
                                BlocBuilder<ReviewFetcherBloc,
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
                                              .map((review) =>
                                                  ReviewCard(review: review))
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
                              ],
                            );
                          },
                          orElse: () => SizedBox.shrink(),
                        );
                      },
                    ),

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
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 3.h),
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

  const ReviewForm({Key? key, this.editReview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ReviewFormBloc>()..add(ReviewFormEvent.initialized(editReview)),
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
            (success) => null,
          );
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Container(
            //padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
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
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Write a review!',
                        hintText: 'Write a review!',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      minLines: 3,
                      maxLines: 5,
                    ),
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
            ),
          );
        },
      ),
    );
  }
}
