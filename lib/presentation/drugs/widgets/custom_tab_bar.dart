import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue,
            width: 3.r,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map(
            (index, icon) => MapEntry(
              index,
              Tab(
                icon: Icon(
                  icon,
                  color: index == selectedIndex ? Colors.blue : Colors.black45,
                  size: 25.r,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
