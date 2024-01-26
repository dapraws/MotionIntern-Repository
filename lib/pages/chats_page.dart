import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionintern_week2/themes/colors.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset("assets/icons/back-icon.png"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "dapraws",
                style: GoogleFonts.roboto(
                  color: white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 6),
              Image.asset("assets/icons/open-list-icon.png"),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/add-icon.png"),
            ),
          ],
        ),
        body: FooterView(
          flex: 1,
          children: [
            Container(),
          ],
          footer: Footer(
            padding: EdgeInsets.only(
              bottom: 35,
            ),
            backgroundColor: black,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/blue-camera-icon.png"),
                    SizedBox(width: 5),
                    Text(
                      "Camera",
                      style: GoogleFonts.roboto(color: blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
