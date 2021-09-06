import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'request_form_event.dart';
part 'request_form_state.dart';
part 'request_form_bloc.freezed.dart';

@injectable
class RequestFormBloc extends Bloc<RequestFormEvent, RequestFormState> {
  final IDrugRepository _drugRepository;
  RequestFormBloc(this._drugRepository) : super(RequestFormState.initial());

  @override
  Stream<RequestFormState> mapEventToState(
    RequestFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        if (e.initialReviewOption == null)
          yield state.copyWith(
            request: state.request.copyWith(pharmacyId: e.pharmacyId),
            userId: e.userId,
            accessToken: e.accessToken,
            userName: e.userName,
            isEditing: true,
            days: e.days,
          );
        else
          yield state.copyWith(
            // TODO: check if this outputs the right thing
            request: e.initialReviewOption ?? state.request,
            userId: e.userId,
            accessToken: e.accessToken,
            userName: e.userName,
            isEditing: true,
          );
        //e.initialReviewOption;
      },
      requestNameChanged: (e) async* {
        yield state.copyWith(
          request: state.request.copyWith(
            drugName: ReviewBody(e.requestNameStr),
          ),
          requestFailureOrSuccess: null,
        );
      },
      daysChanged: (e) async* {
        yield state.copyWith(
          days: e.daysint,
          requestFailureOrSuccess: null,
        );
      },
      submitPressed: (e) async* {
        Result<ReviewFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          requestFailureOrSuccess: null,
        );

        if (state.request.failureOption == null) {
          failureOrSuccess = await _drugRepository.createRequest(
            request: state.request,
            days: state.days,
            userId: state.userId,
            accessToken: state.accessToken,
            userName: state.userName,
          );
        }

        yield state.copyWith(
          isEditing: false,
          showErrorMessages: true,
          requestFailureOrSuccess: failureOrSuccess,
        );
      },
    );
  }
}
