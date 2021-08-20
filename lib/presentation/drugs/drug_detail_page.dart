import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/review_bloc/review_bloc.dart';
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
    return Scaffold(
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
                  image: AssetImage(
                    drug.imageUrls[0],
                  ),
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
              ReviewWidget(),
            ],
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
          getIt<ReviewBloc>()..add(ReviewEvent.initialized(editReview)),
      child: BlocConsumer<ReviewBloc, ReviewState>(
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
