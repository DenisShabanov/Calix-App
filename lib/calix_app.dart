import 'package:calix/features/main_shell_page/view/main_shell_page.dart';
import 'package:calix/theme%20/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      darkTheme: darkTheme,
      home: MainShellPage(),
    );
  }
}
