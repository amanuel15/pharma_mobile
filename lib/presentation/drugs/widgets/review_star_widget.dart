import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pharma_flutter/application/drugs/review/review_form/review_form_bloc.dart';

class ReviewStarField extends HookWidget {
  const ReviewStarField({
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
      child: RatingBar.builder(
        initialRating: stars,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          context
              .read<ReviewFormBloc>()
              .add(ReviewFormEvent.reviewStarChanged(rating));
        },
      ),
    );
  }
}
