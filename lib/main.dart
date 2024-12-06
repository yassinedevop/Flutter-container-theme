import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Button',
      theme: AppTheme.lightTheme,
      home: const MyHomePage(title: 'Custom Button'),
    );
  }
}
