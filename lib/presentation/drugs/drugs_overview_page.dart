import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/drugs/main_navigation/main_navigation_cubit.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/custom_tab_bar.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/home_stack_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/profile_stack_widget.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/search_stack_widget.dart';

class PharmaOverviewPage extends StatelessWidget {
  const PharmaOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainNavigationCubit>(
      create: (context) => MainNavigationCubit(),
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
  }
}
