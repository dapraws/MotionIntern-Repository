import 'package:flutter/material.dart';
import 'package:motionintern_week2/themes/colors.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int>? onClicked;
  BottomNavBar({this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: black,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: white,
      unselectedItemColor: white,
      items: [
        // Home

        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/home-filled-icon.png"),
          icon: Image.asset("assets/icons/home-icon.png"),
          label: '',
        ),
        // Education
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/search-filled-icon.png"),
          icon: Image.asset("assets/icons/search-icon.png"),
          label: '',
        ),
        // Map
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/add-square-icon.png"),
          label: '',
        ),
        // Technology
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/love-filled-icon.png"),
          icon: Image.asset("assets/icons/love-icon.png"),
          label: '',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/profile-filled-icon.png"),
          icon: Image.asset("assets/icons/profile-icon.png"),
          label: '',
        ),
      ],
    );
  }
}
