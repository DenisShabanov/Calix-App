import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bottom_navigation_bar_icons/newspaper-open.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 0
                  ? Color.fromARGB(255, 60, 130, 243)
                  : Colors.grey.shade500,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
          label: 'Journal',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bottom_navigation_bar_icons/recipe.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 1
                  ? Color.fromARGB(255, 60, 130, 243)
                  : Colors.grey.shade500,
              BlendMode.srcIn,
            ),

            width: 24,
            height: 24,
          ),
          label: 'Recipes',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bottom_navigation_bar_icons/chart-pie-alt.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 2
                  ? Color.fromARGB(255, 60, 130, 243)
                  : Colors.grey.shade500,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
          label: 'Chart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bottom_navigation_bar_icons/user.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 3
                  ? Color.fromARGB(255, 60, 130, 243)
                  : Colors.grey.shade500,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
