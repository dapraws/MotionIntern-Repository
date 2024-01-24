import 'package:flutter/material.dart';
import 'package:motionintern_week2/widgets/chatcard_widget.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ChatCard(
              image: "assets/images/",
              name: "Aldian",
              message: "Message",
              time: "19:30",
            ),
            SizedBox(height: 16),
            ChatCard(
              image: "assets/images/",
              name: "Bima",
              message: "Message",
              time: "19:20",
            ),
            SizedBox(height: 16),
            ChatCard(
              image: "assets/images/",
              name: "Cecep",
              message: "Message",
              time: "19:10",
            ),
          ],
        ),
      ),
    );
  }
}
