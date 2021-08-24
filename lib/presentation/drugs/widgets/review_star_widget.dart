import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';

class ReviewReviewBodyField extends HookWidget {
  const ReviewReviewBodyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double stars = 5;

    return BlocListener<ReviewFormBloc, ReviewFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        stars = state.review.reviewStar.getOrCrash();
      },
      child: Container(),
    );
  }
}
