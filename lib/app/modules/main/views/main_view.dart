import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/explore/views/main_view.dart';
import 'package:motioninternship_week5/app/modules/home/views/home_view.dart';
import 'package:motioninternship_week5/app/modules/main/controllers/main_controller.dart';
import 'package:motioninternship_week5/app/modules/newpost/views/newpost_controller.dart';
import 'package:motioninternship_week5/app/modules/profile/views/profile_controller.dart';
import 'package:motioninternship_week5/app/modules/reels/views/reels_controller.dart';
import 'package:motioninternship_week5/app/shared/widgets/bottom_navbar.dart';

// ignore: must_be_immutable
class MainView extends GetView<MainController> {
  var selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                ExploreView(),
                NewPostView(),
                ReelsView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
