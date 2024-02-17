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
    description: 'Aku ingin menguasai dunia',
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
            title: "Aku",
            backgroundColor: Colors.red,
          ),
          StoryItem.text(
            title: "Ingin",
            backgroundColor: Colors.yellow,
          ),
          StoryItem.text(
            title: "Menguasai",
            backgroundColor: Colors.green,
          ),
          StoryItem.text(
            title: "Dunia",
            backgroundColor: Colors.blue,
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
                "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExa3k4ZWw2MDY1d25wbWV1cGVjdTNyb2xtbzBwYmZtejlyMno3dmR0NSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/fZdzEHC8sMC0E/giphy.gif",
            caption: "Aku",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZG13OWkwOXkwdnZqYjQzcGh2OGUxNGplb3U0NXVzdzQwOHN2MnE5YSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/WmkEhAIyWfpm1vdVcg/giphy.gif",
            caption: "Bangga",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExemtkOXJidXo4cGZzdjE0cHRjMDBzdWZlZzRxams0Z3lydHJxd2JjYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/UlexC9HXTiNz2/giphy.gif",
            caption: "Menjadi",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url:
                "https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExcXY5MnEwNjgzMHg4eTV0aXA5czllamtkNDcxd29waGc3NmN2a2NjdCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/T7Qx28nEdo9NK/giphy.gif",
            caption: "Wibu",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'profile-photo',
        namaAkun: 'rizalGans',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZm5zdWo2MW1qMWd6NGt5a2U4cXJnOXk0dWM3aGwxbDY4ZmJhNWtvMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/eruVMzXlb70oo/giphy.gif",
            caption: "Aku saat tidak belajar tapi nilai tetap bagus",
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
