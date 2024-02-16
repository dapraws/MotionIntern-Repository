import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

class IGStoryController extends GetxController {
  final storyController = StoryController();
  List<StoryItem> listOfStory = Get.arguments['story'];
  void IGStoryComplete() {
    Get.back();
  }
}
