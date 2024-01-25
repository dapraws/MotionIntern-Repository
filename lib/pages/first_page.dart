import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/instagram-logo.png"),
            ),
            SizedBox(height: 52),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profile-photo.jpg"),
                    radius: 40,
                  ),
                  SizedBox(height: 13),
                  Text(
                    "dapraws",
                    style: GoogleFonts.inter(
                      color: white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: GoogleFonts.roboto(
                    color: white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Switch accounts",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
