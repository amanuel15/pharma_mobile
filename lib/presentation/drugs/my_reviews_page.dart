import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_fetcher/review_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/presentation/drugs/drug_detail_page.dart';
import 'package:auto_route/auto_route.dart';

class MyReviewsPage extends StatelessWidget {
  final User user;
  const MyReviewsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Reviews',
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
      body: BlocProvider<ReviewFetcherBloc>(
        create: (context) => getIt<ReviewFetcherBloc>()
          ..add(ReviewFetcherEvent.fetchMyReviews(user.token, 0, user.id)),
        child: BlocBuilder<ReviewFetcherBloc, ReviewFetcherState>(
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
                return Container(
                  color: Color(0xFFF5F6F9),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final review = state.reviews[index];
                        if (review.failureOption != null) {
                          return ErrorReviewCard(review: review);
                        } else {
                          return ReviewCard(
                            review: review,
                            user: user,
                          );
                        }
                      },
                      itemCount: state.reviews.length,
                    ),
                  ),
                );
              },
              loadFailure: (state) {
                return Center(
                  child: Text('Load Failure!'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ErrorReviewCard extends StatelessWidget {
  final Review review;

  const ErrorReviewCard({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid review, please, contact support',
              style: TextStyle(fontSize: 18.sp, color: Colors.red),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            Text(
              review.failureOption.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
