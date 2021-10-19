import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/request/request_actor/request_actor_bloc.dart';
import 'package:pharma_flutter/application/drugs/request/request_fetcher/request_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/flashbar_widget.dart';

class MyRequestPage extends StatelessWidget {
  final User user;
  const MyRequestPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Requests',
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
      body: BlocProvider<RequestFetcherBloc>(
        create: (context) => getIt<RequestFetcherBloc>()
          ..add(RequestFetcherEvent.fetchMyRequests(user.token, user.id)),
        child: BlocListener<RequestActorBloc, RequestActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                flashBarWidget(context, state);
              },
              deleteSuccess: (state) {
                context.read<RequestFetcherBloc>().add(
                      RequestFetcherEvent.fetchMyRequests(user.token, user.id),
                    );
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<RequestFetcherBloc, RequestFetcherState>(
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
                          final request = state.requests[index];
                          if (request.failureOption != null) {
                            return ErrorRequestCard(request: request);
                          } else {
                            return RequestCard(
                              request: request,
                              user: user,
                            );
                          }
                        },
                        itemCount: state.requests.length,
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
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  final Request request;
  final User user;

  const RequestCard({Key? key, required this.request, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestActorBloc>(
      create: (context) => getIt<RequestActorBloc>(),
      child: Card(
        elevation: 1,
        margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 3.h),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'You',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[300],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text(
                                    'Warning',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  content: Text(
                                    'Are you sure you want to remove this request?',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        context
                                            .read<RequestActorBloc>()
                                            .add(RequestActorEvent.deleted(
                                              request,
                                              user.token,
                                              user.id,
                                            ));
                                      },
                                      child: Text('YES'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('NO'),
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 24.r,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 24.r,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'Reviewed on ' + request.creationDate,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                request.drugName.getOrCrash(),
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorRequestCard extends StatelessWidget {
  final Request request;

  const ErrorRequestCard({Key? key, required this.request}) : super(key: key);

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
              request.failureOption.toString(),
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

class _CustomDialogBoxState extends StatelessWidget {
  final String title, discription, text;

  const _CustomDialogBoxState(
      {Key? key,
      required this.title,
      required this.discription,
      required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: contentBox(context),
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                discription,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
