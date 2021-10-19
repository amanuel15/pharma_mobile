import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pharma_flutter/application/drugs/review/pharmacy_review_form/pharmacy_review_form_bloc.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewBodyField extends HookWidget {
  const ReviewBodyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ReviewFormBloc, ReviewFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.review.reviewBody.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Write a review!',
            hintText: 'Write a review!',
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          maxLength: ReviewBody.maxLength,
          maxLines: 5,
          minLines: 3,
          onChanged: (value) => context
              .read<ReviewFormBloc>()
              .add(ReviewFormEvent.reviewBodyChanged(value)),
          validator: (_) =>
              context.read<ReviewFormBloc>().state.review.reviewBody.value.when(
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

class PharmacyReviewBodyField extends HookWidget {
  const PharmacyReviewBodyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<PharmacyReviewFormBloc, PharmacyReviewFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.review.reviewBody.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Write a review!',
            hintText: 'Write a review!',
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          maxLength: ReviewBody.maxLength,
          maxLines: 5,
          minLines: 3,
          onChanged: (value) => context
              .read<PharmacyReviewFormBloc>()
              .add(PharmacyReviewFormEvent.reviewBodyChanged(value)),
          validator: (_) =>
              context.read<ReviewFormBloc>().state.review.reviewBody.value.when(
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
