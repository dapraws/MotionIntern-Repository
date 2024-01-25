import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';

class UserStories extends StatelessWidget {
  final String name;

  UserStories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: GoogleFonts.roboto(
              color: white,
              fontWeight: FontWeight.w100,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
