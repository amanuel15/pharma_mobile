import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pharma_flutter/application/drugs/review_bloc/review_bloc.dart';

class ReviewReviewBodyField extends HookWidget {
  const ReviewReviewBodyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ReviewBloc, ReviewState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.review.reviewBody.getOrCrash();
      },
      child: Container(),
    );
  }
}
