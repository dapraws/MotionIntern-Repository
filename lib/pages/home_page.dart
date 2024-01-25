import 'package:flutter/material.dart';
import 'package:motionintern_week2/themes/colors.dart';
import 'package:motionintern_week2/widgets/user_posts_widget.dart';
import 'package:motionintern_week2/widgets/user_stories_widget.dart';

class HomePage extends StatelessWidget {
  final List people = [
    "bonnie",
    "rara",
    "kokom",
    "miu",
    "acil",
    "coki",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
      body: Column(
        children: [
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserStories(name: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
