import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_request_repository.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'request_fetcher_event.dart';
part 'request_fetcher_state.dart';
part 'request_fetcher_bloc.freezed.dart';

@injectable
class RequestFetcherBloc
    extends Bloc<RequestFetcherEvent, RequestFetcherState> {
  final IRequestRepository _requestRepository;

  RequestFetcherBloc(this._requestRepository)
      : super(const RequestFetcherState.initial());

  @override
  Stream<RequestFetcherState> mapEventToState(
    RequestFetcherEvent event,
  ) async* {
    yield* event.map(
      fetchRequests: (e) async* {
        Result<ReviewFailure, List<Request>> result =
            await _requestRepository.fetchRequests(
          filterBy: e.filterBy,
          pageNumber: e.pageNumber,
          accessToken: e.accessToken,
          userId: e.userId,
        );
        add(RequestFetcherEvent.requestsReceived(result));
      },
      fetchMyRequests: (e) async* {
        Result<ReviewFailure, List<Request>> result =
            await _requestRepository.fetchMyRequests(
          accessToken: e.accessToken,
          userId: e.userId,
        );
        add(RequestFetcherEvent.requestsReceived(result));
      },
      requestsReceived: (e) async* {
        yield e.failureOrRequests.when(
          (error) => RequestFetcherState.loadFailure(error),
          (success) => RequestFetcherState.loadSuccess(success),
        );
      },
    );
  }
}
