import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_flutter/application/drugs/fetch_drug/fetch_drug_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';

class MySubscriptionsPage extends StatelessWidget {
  final User user;
  const MySubscriptionsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchDrugBloc>(
      create: (context) => getIt<FetchDrugBloc>(),
      child: BlocListener<FetchDrugBloc, FetchDrugState>(
        listener: (context, state) {
          state.maybeMap(
            loadSuccess: (state) {
              context.router.push(DrugDetailRoute(
                drug: state.drug,
              ));
            },
            orElse: () {},
          );
        },
        child: Scaffold(
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
          body: BlocBuilder<SubscriptionFetcherBloc, SubscriptionFetcherState>(
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
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final subscription = state.subscriptions[index];
                        return SubscriptionCard(
                          subscription: subscription,
                          user: user,
                        );
                      },
                      itemCount: state.subscriptions.length,
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

class SubscriptionCard extends StatelessWidget {
  final Subscription subscription;
  final User user;

  const SubscriptionCard({
    Key? key,
    required this.subscription,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        context.read<FetchDrugBloc>().add(
            FetchDrugEvent.fetchDrug(subscription.drugId, user.token, user.id));
      },
      child: Card(
        color: Colors.grey[300],
        child: ListTile(
          title: Text(
            subscription.drugName,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
          subtitle: Text(
            subscription.isAvailable
                ? 'This drug is now available'
                : 'This drug is still not available',
          ),
        ),
      ),
    );
  }
}
