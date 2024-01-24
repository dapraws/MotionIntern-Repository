import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  const ChatCard({
    super.key,
    required this.image,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(message),
            ],
          ),
        ),
        Text(time),
      ],
    );
  }
}
