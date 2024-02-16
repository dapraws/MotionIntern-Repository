import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/igstory/bindings/igstory_binding.dart';
import 'package:motioninternship_week5/app/modules/igstory/views/igstory_view.dart';

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
  ];
}
