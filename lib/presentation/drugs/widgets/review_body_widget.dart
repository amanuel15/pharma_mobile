import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pharma_flutter/application/drugs/review_bloc/review_bloc.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Note',
            counterText: '',
          ),
          maxLength: ReviewBody.maxLength,
          maxLines: null,
          minLines: 5,
          onChanged: (value) => context
              .read<ReviewBloc>()
              .add(ReviewEvent.reviewBodyChanged(value)),
          validator: (_) =>
              context.read<ReviewBloc>().state.review.reviewBody.value.when(
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