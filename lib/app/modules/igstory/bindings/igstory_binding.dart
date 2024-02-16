import 'package:get/get.dart';

import '../controllers/igstory_controller.dart';

class IGStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IGStoryController>(
      () => IGStoryController(),
    );
  }
}
