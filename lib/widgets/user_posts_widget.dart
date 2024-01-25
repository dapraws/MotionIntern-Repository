import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/more-icon.png"),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[400],
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/love-icon.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/chat-icon.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/paperplane-icon.png"),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/save-icon.png"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
