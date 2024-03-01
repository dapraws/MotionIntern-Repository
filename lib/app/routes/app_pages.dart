import 'package:get/get.dart';
import 'package:motionintern_week7/app/data/models/todoitem_model.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(
        todoItem_: TodoItemModel(
            id: "1",
            name: "example",
            status: true,
            onDelete: (id) {},
            onToggle: (id, status) {}),
      ),
      binding: HomeBinding(),
    ),
  ];
}
