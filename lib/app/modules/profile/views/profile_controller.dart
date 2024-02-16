import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motioninternship_week5/app/modules/profile/controllers/profile_controllers.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Reels Page"),
      ),
    );
  }
}
