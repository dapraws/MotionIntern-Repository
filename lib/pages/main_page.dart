import 'package:flutter/material.dart';
import 'package:motionintern_week2/pages/addpost_page.dart';
import 'package:motionintern_week2/pages/home_page.dart';
import 'package:motionintern_week2/pages/likes_page.dart';
import 'package:motionintern_week2/pages/profile_page.dart';
import 'package:motionintern_week2/pages/search_page.dart';
import 'package:motionintern_week2/widgets/bottom_navbar_widget.dart';
import 'package:motionintern_week2/themes/colors.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List pages = [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    LikesPage(),
    ProfilePage(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        // appBar: AppBar(
        //   title: Text('Movies'),
        //   backgroundColor: Colors.black,
        // ),
        body: Center(
          child: pages.elementAt(selectedIndex),
        ),
        // drawer: SideMenu(),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}
