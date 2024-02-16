import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/reels/controllers/reels_controllers.dart';

class ReelsView extends GetView<ReelsController> {
  const ReelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reels View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Reels Page"),
      ),
    );
  }
}
