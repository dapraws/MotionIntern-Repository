import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/pages/editprofile_page.dart';
import 'package:motionintern_week2/themes/colors.dart';
import 'package:motionintern_week2/widgets/profile_grid_widget.dart';
import 'package:motionintern_week2/widgets/profile_highlight_widget.dart';
import 'package:motionintern_week2/widgets/profile_tags_widget.dart';

class ProfilePage extends StatelessWidget {
  final List highlight = [
    "New",
    "Jakarta",
    "Bandung",
    "Tokyo",
    "Paris",
    "New York",
    "London",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: black,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/private-icon.png"),
                SizedBox(width: 6),
                Text(
                  "dapraws",
                  style: GoogleFonts.roboto(
                    color: white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 6),
                Image.asset("assets/icons/open-list-icon.png"),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/menu-bar-icon.png"),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PROFILE HEADER
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profile-photo.jpg"),
                            radius: 48,
                          ),
                          Column(
                            children: [
                              Text(
                                "3",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Posts",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "22",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "111",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Following",
                                style: GoogleFonts.roboto(
                                  color: white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    // PROFILE INFORMATION
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Muhammad Darrel Prawira",
                            style: GoogleFonts.roboto(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Mobile Innovation Laboratory Internship 2024",
                            style: GoogleFonts.roboto(
                              color: white,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "github.com/dapraws",
                            style: GoogleFonts.roboto(
                              color: blue,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),

                    // EDIT PROFILE BUTTON
                    Container(
                      width: double.infinity,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: blackAccent),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfilePage(),
                            ),
                          );
                        },
                        child: Text(
                          "Edit Profile",
                          style: GoogleFonts.roboto(
                            color: white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            // PROFILE HIGHLIGHT
            Container(
              height: 110,
              padding: EdgeInsets.only(left: 10),
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlight.length,
                itemBuilder: (context, index) {
                  return ProfileHighlight(highlight: highlight[index]);
                },
              ),
            ),

            // PROFILE CONTENT
            TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.5,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  icon: Image.asset("assets/icons/grids-icon.png"),
                ),
                Tab(
                  icon: Image.asset("assets/icons/tags-icon.png"),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ProfileGrid(),
                  ProfileTags(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
