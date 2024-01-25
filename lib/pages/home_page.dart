import 'package:flutter/material.dart';
import 'package:motionintern_week2/themes/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/camera-icon.png"),
          ),
          title: Container(
            width: 105,
            child: Image.asset("assets/images/instagram-logo.png"),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/tv-icon.png"),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/paperplane-icon.png"),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/home-stories.png"),
              ),
              Container(
                child: Image.asset("assets/images/home-posts.png"),
              ),
            ],
          ),
        ));
  }
}
