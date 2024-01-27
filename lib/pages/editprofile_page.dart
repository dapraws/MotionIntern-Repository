import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: GoogleFonts.roboto(
                  color: white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: GoogleFonts.roboto(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Done",
              style: GoogleFonts.roboto(
                color: blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Photo
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile-photo.jpg"),
                      radius: 40,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Change Profile Photo",
                      style: GoogleFonts.roboto(
                        color: blue,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          // Profile Information
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Username",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Website",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Bio",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Darrel Prawira",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: blackAccent,
                        height: 30,
                        thickness: 0.5,
                      ),
                      Text(
                        "dapraws",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: blackAccent,
                        height: 30,
                        thickness: 0.5,
                      ),
                      Text(
                        "github.com/dapraws",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: blackAccent,
                        height: 30,
                        thickness: 0.5,
                      ),
                      Text(
                        "Mobile Innovation Internship 2024",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: blackAccent,
            height: 40,
            thickness: 0.5,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Switch to Professional Account",
                style: GoogleFonts.roboto(
                  color: blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          // Profile Private Information
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Private Information",
              style: GoogleFonts.roboto(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 25),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Phone",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Gender",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "dapraws@dapraws.site",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: blackAccent,
                        height: 30,
                        thickness: 0.5,
                      ),
                      Text(
                        "+62 812 1282 0568",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: blackAccent,
                        height: 30,
                        thickness: 0.5,
                      ),
                      Text(
                        "Male",
                        style: GoogleFonts.roboto(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
