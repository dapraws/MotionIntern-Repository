import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/explore/controllers/explore_controller.dart';
import 'package:motioninternship_week5/app/modules/home/controllers/home_controller.dart';
import 'package:motioninternship_week5/app/modules/main/controllers/main_controller.dart';
import 'package:motioninternship_week5/app/modules/newpost/controllers/newpost_controllers.dart';
import 'package:motioninternship_week5/app/modules/profile/controllers/profile_controllers.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ExploreController>(
      () => ExploreController(),
    );
    Get.lazyPut<NewPostController>(
      () => NewPostController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
