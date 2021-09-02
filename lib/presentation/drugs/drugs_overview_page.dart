import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/main_navigation/main_navigation_cubit.dart';
import 'package:pharma_flutter/application/drugs/search/search_bloc.dart';
import 'package:pharma_flutter/application/drugs/search/search_result/search_result_bloc.dart';
import 'package:pharma_flutter/application/drugs/subscription/subscription_fetcher/subscription_fetcher_bloc.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/custom_tab_bar.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/home_stack_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/profile_stack_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/search_stack_widget.dart';

class PharmaOverviewPage extends StatelessWidget {
  const PharmaOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => MainNavigationCubit(),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<SearchHistoryCubit>()..getSearchHistory(),
            ),
            BlocProvider<SearchBloc>(
              create: (BuildContext context) => getIt<SearchBloc>(),
            ),
            BlocProvider<SearchResultBloc>(
              create: (BuildContext context) => getIt<SearchResultBloc>(),
            ),
            if (state.maybeWhen(
                authenticated: (state) => true, orElse: () => false))
              BlocProvider<SubscriptionFetcherBloc>(
                lazy: false,
                create: (BuildContext context) {
                  User? user = state.maybeWhen(
                    authenticated: (user) => user,
                    orElse: () => null,
                  );
                  return getIt<SubscriptionFetcherBloc>()
                    ..add(SubscriptionFetcherEvent.fetchSubscriptions(
                      user!.token,
                      user.id,
                    ));
                },
              ),
          ],
          child: BlocBuilder<MainNavigationCubit, MainNavigationState>(
            builder: (context, state) {
              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: IndexedStack(
                    index: state.index,
                    children: [
                      HomeStackWidget(),
                      SearchStackWidget(),
                      ProfileStackWidget(),
                    ],
                  ),
                  bottomNavigationBar: CustomTabBar(
                    icons: [Icons.home, Icons.search, Icons.person],
                    selectedIndex: state.index,
                    onTap: (index) =>
                        context.read<MainNavigationCubit>().setIndex(index),
                  ),
                  // bottomNavigationBar: BottomNavigationBar(
                  //   currentIndex: state.index,
                  //   backgroundColor: Color(0xff4a4848),
                  //   unselectedItemColor: Colors.white54,
                  //   selectedItemColor: Colors.green[300],
                  //   iconSize: 25.r,
                  //   // showUnselectedLabels: false,
                  //   // unselectedIconTheme: IconThemeData(size: 30.r),
                  //   items: [
                  //     BottomNavigationBarItem(
                  //       icon: Icon(
                  //         Icons.home,
                  //       ),
                  //       label: 'Home',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       icon: Icon(
                  //         Icons.search,
                  //       ),
                  //       label: 'Search',
                  //     ),
                  //     BottomNavigationBarItem(
                  //       icon: Icon(
                  //         Icons.person,
                  //       ),
                  //       label: 'Account',
                  //     ),
                  //   ],
                  //   onTap: (index) =>
                  //       context.read<MainNavigationCubit>().setIndex(index),
                  // ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
