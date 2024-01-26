import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';
import 'package:motionintern_week2/widgets/explore_grid_widget.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  List<String> category = [
    "IGTV",
    "Shop",
    "Style",
    "Sports",
    "Travel",
    "Food",
    "Art",
    "Music",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: black,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 8, 8, 8),
            color: blackAccent,
            child: Row(
              children: [
                Image.asset("assets/icons/small-search-icon.png"),
                SizedBox(width: 6),
                Text(
                  "Search",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: blackAccent[100],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/live-icon.png"),
          )
        ],
      ),
      body: ExploreGrid(),
    );
  }
}
