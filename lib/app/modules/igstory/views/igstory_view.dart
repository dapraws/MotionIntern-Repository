import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/igstory/controllers/igstory_controller.dart';
import 'package:story_view/story_view.dart';

class IGStoryView extends GetView<IGStoryController> {
  const IGStoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IGStory View'),
          centerTitle: true,
        ),
        body: StoryView(
          controller: controller.storyController,
          storyItems: controller.listOfStory,
          onComplete: controller.IGStoryComplete,
        ));
  }
}
