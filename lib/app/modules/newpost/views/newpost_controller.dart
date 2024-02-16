import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/newpost/controllers/newpost_controllers.dart';

class NewPostView extends GetView<NewPostController> {
  const NewPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("New Post Page"),
      ),
    );
  }
}
