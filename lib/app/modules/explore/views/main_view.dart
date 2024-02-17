import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/explore/controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Explore Page"),
      ),
    );
  }
}
