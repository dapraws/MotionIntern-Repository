import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/igstory/bindings/igstory_binding.dart';
import 'package:motioninternship_week5/app/modules/igstory/views/igstory_view.dart';
import 'package:motioninternship_week5/app/modules/newpost/bindings/newpost_binding.dart';
import 'package:motioninternship_week5/app/modules/newpost/views/newpost_controller.dart';
import 'package:motioninternship_week5/app/modules/profile/bindings/profile_binding.dart';
import 'package:motioninternship_week5/app/modules/profile/views/profile_controller.dart';
import 'package:motioninternship_week5/app/modules/reels/bindings/reels_binding.dart';
import 'package:motioninternship_week5/app/modules/reels/views/reels_controller.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.IG_STORY,
      page: () => const IGStoryView(),
      binding: IGStoryBinding(),
    ),
    GetPage(
      name: _Paths.NEW_POST,
      page: () => const NewPostView(),
      binding: NewPostBinding(),
    ),
    GetPage(
      name: _Paths.REELS,
      page: () => const ReelsView(),
      binding: ReelsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
