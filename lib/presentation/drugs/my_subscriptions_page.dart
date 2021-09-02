import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class MySubscriptionsPage extends StatelessWidget {
  final User user;
  const MySubscriptionsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Subscriptions',
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
      body: BlocProvider<SubscriptionFetcherBloc>(
        create: (context) => getIt<SubscriptionFetcherBloc>()
          ..add(
              SubscriptionFetcherEvent.fetchSubscriptions(user.token, user.id)),
        child: BlocBuilder<SubscriptionFetcherBloc, SubscriptionFetcherState>(
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
                        final subscription = state.subscriptions[index];
                        return SubscriptionCard(
                          subscription: subscription,
                        );
                      },
                      itemCount: state.subscriptions.length,
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
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final Subscription subscription;

  const SubscriptionCard({Key? key, required this.subscription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              subscription.drugName,
              style: TextStyle(
                fontSize: 24.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
