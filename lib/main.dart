import 'package:darrel_motionintern_week_1/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
      },
    ),
  );
}
