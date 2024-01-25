import 'package:flutter/material.dart';

const MaterialColor black = MaterialColor(_blackPrimaryValue, <int, Color>{
  50: Color(0xFFE3E3E3),
  100: Color(0xFFB8B8B8),
  200: Color(0xFF898989),
  300: Color(0xFF595959),
  400: Color(0xFF363636),
  500: Color(_blackPrimaryValue),
  600: Color(0xFF101010),
  700: Color(0xFF0D0D0D),
  800: Color(0xFF0A0A0A),
  900: Color(0xFF050505),
});
const int _blackPrimaryValue = 0xFF121212;

const MaterialColor blackAccent = MaterialColor(_blackAccentValue, <int, Color>{
  100: Color(0xFF8E8E93),
  200: Color(_blackAccentValue),
  400: Color(0xFFE70000),
  700: Color(0xFFCE0000),
});
const int _blackAccentValue = 0xFF262626;

const MaterialColor white = MaterialColor(_whitePrimaryValue, <int, Color>{
  50: Color(0xFFFEFEFE),
  100: Color(0xFFFDFDFD),
  200: Color(0xFFFCFCFC),
  300: Color(0xFFFBFBFB),
  400: Color(0xFFFAFAFA),
  500: Color(_whitePrimaryValue),
  600: Color(0xFFF8F8F8),
  700: Color(0xFFF7F7F7),
  800: Color(0xFFF6F6F6),
  900: Color(0xFFF5F5F5),
});
const int _whitePrimaryValue = 0xFFF9F9F9;

const MaterialColor whiteAccent = MaterialColor(_whiteAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_whiteAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _whiteAccentValue = 0xFFFFFFFF;

const MaterialColor blue = MaterialColor(_bluePrimaryValue, <int, Color>{
  50: Color(0xFFE7F3FD),
  100: Color(0xFFC3E0FA),
  200: Color(0xFF9BCBF7),
  300: Color(0xFF73B6F4),
  400: Color(0xFF55A7F1),
  500: Color(_bluePrimaryValue),
  600: Color(0xFF318FED),
  700: Color(0xFF2A84EB),
  800: Color(0xFF237AE8),
  900: Color(0xFF1669E4),
});
const int _bluePrimaryValue = 0xFF3797EF;

const MaterialColor blueAccent = MaterialColor(_blueAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_blueAccentValue),
  400: Color(0xFFAECCFF),
  700: Color(0xFF95BCFF),
});
const int _blueAccentValue = 0xFFE1ECFF;
