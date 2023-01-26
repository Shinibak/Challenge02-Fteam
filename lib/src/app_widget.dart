
import 'package:challenge02_fteam/src/views/adopt_page.dart';
import 'package:challenge02_fteam/src/views/home_page.dart';
import 'package:flutter/material.dart';
import 'theme/theme_custom.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/two': (context) => const AdoptPage(),
      },
    );
  }
}
