import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/newpost/controllers/newpost_controllers.dart';

class NewPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPostController>(
      () => NewPostController(),
    );
  }
}
