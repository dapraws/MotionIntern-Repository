import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/profile/controllers/profile_controllers.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
