import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/reels/controllers/reels_controllers.dart';

class ReelsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReelsController>(
      () => ReelsController(),
    );
  }
}
