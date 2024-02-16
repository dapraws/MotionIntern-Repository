import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motioninternship_week5/app/data/models/post_model.dart';
import 'package:motioninternship_week5/app/data/models/story_model.dart';
import 'package:motioninternship_week5/app/routes/app_pages.dart';
import 'package:story_view/story_view.dart';

class HomeController extends GetxController {
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'Ruffles',
    description:
        'Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    fotoProfile: 'foto_profile',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'foto_profile',
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
        image: 'foto_profile',
        namaAkun: 'Ruffles',
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
        image: 'foto_profile',
        namaAkun: 'Sabanok',
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
        image: 'foto_profile',
        namaAkun: 'Blue_Boy',
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
