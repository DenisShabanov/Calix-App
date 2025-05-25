import 'package:calix/features/journal_page/view/journal_page.dart';
import 'package:calix/features/main_shell_page/widgets/bottom_navigation.dart';
import 'package:calix/features/profile_page/view/profile_page.dart';
import 'package:calix/features/recipes_page/view/recipes_page.dart';
import 'package:calix/features/statistics_page/view/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    JournalPage(),
    RecipesPage(),
    StatisticsPage(),
    ProfilePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SafeArea(child: _pages[_currentIndex]),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(),
          child: BottomNavigation(
            currentIndex: _currentIndex,
            onTap: onItemTapped,
          ),
        ),
      ),
    );
  }
}
