import 'package:challenge02_fteam/src/theme/theme_constants.dart';
import 'package:challenge02_fteam/src/views/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
