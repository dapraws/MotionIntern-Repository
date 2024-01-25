import 'package:flutter/material.dart';
import 'package:motionintern_week2/pages/first_page.dart';
import 'package:motionintern_week2/pages/main_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
