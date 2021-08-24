import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_actor/review_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/sign_in/widgets/elevatedbtn_field_widget.dart';

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
      ],
      child: BlocListener<ReviewActorBloc, ReviewActorState>(
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
        child: Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListView(
                children: [
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
                    drug.drugName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
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
                  // ReviewWidget(),
                  BlocBuilder<ReviewActorBloc, ReviewActorState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        createReview: (state) {
                          return ReviewWidget();
                        },
                        orElse: () => SizedBox.shrink(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final Review? editReview;

  const ReviewWidget({Key? key, this.editReview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ReviewFormBloc>()..add(ReviewFormEvent.initialized(editReview)),
      child: BlocConsumer<ReviewFormBloc, ReviewFormState>(
        listenWhen: (p, c) =>
            p.reviewFailureOrSuccess != c.reviewFailureOrSuccess,
        listener: (context, state) {
          // TODO: implement listener
        },
        buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Write a review!',
                    hintText: 'Write a review!',
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedBtnWidget(
                  func: () {},
                  type: 'Create Review',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
