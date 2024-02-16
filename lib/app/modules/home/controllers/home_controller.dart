import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motioninternship_week5/app/data/models/post_model.dart';
import 'package:motioninternship_week5/app/data/models/story_model.dart';
import 'package:motioninternship_week5/app/routes/app_pages.dart';
import 'package:story_view/story_view.dart';

class HomeController extends GetxController {
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'dapraws',
    description:
        'Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    fotoProfile: 'profile-photo',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'profile-photo',
    isSponsor: true,
  );

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    storyModel = [
      StoryModel(
        image: 'profile-photo',
        namaAkun: 'dapraws',
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Halo motion",
            backgroundColor: Colors.red,
          ),
        ],
        isLoginAccount: true,
      ),
      StoryModel(
        image: 'profile-photo',
        namaAkun: 'RezWibu',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'profile-photo',
        namaAkun: 'rizalPro',
        storyItems: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
    ];
    update();
  }

  void changeIconLike() {
    postModel.isLike = !postModel.isLike;
    if (postModel.isLike) {
      postModel.jumlahLike++;
    } else {
      postModel.jumlahLike--;
    }
    update();
  }

  void toStoryPageView(
    List<StoryItem>? storyItems,
  ) {
    Get.toNamed(Routes.IG_STORY, arguments: {
      'story': storyItems,
    });
  }
}
