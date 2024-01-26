import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/pages/main_page.dart';
import 'package:motionintern_week2/themes/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset("assets/icons/back-icon.png"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/instagram-logo.png"),
            SizedBox(height: 40),
            TextField(
              style: GoogleFonts.roboto(
                color: white,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Username",
                hintStyle: GoogleFonts.roboto(color: Colors.grey),
                filled: true,
                fillColor: black,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              style: GoogleFonts.roboto(
                color: white,
              ),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Password",
                hintStyle: GoogleFonts.roboto(color: Colors.grey),
                filled: true,
                fillColor: black,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: GoogleFonts.roboto(
                    color: blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/facebook-icon.png"),
                SizedBox(width: 10),
                Text(
                  "Log in with Facebook",
                  style: GoogleFonts.roboto(
                    color: blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 0.0, right: 20.0),
                    child: Divider(
                      color: black,
                    ),
                  ),
                ),
                Text(
                  "OR",
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 0.0),
                    child: Divider(
                      color: black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Sign up.",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Column(
          children: [
            Divider(
              color: black,
            ),
            Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Instagram from Facebook",
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
