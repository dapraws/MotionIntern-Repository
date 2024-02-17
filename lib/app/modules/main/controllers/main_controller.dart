import 'package:get/get.dart';
import 'package:motioninternship_week5/app/data/models/bottom_navbar_model.dart';

class MainController extends GetxController {
  final BottomNavBarModel bottomNavBarModel = BottomNavBarModel();
  var tabIndex = 0;

  // List tab = [
  //   HomeView(),
  //   ExploreView(),
  //   NewPostView(),
  //   ReelsView(),
  //   ProfileView(),
  // ];

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
