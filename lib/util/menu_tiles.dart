import 'package:darrel_motionintern_week_1/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuTiles extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onTap;

  MenuTiles({
    required this.coffee,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[100],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffee.imagePath),
              ),
              SizedBox(height: 20),
              // Coffee name
              Text(
                coffee.name,
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),

              // Coffee price and favorite icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coffee.price,
                    style: GoogleFonts.poppins(
                        color: Color(0xFF00623B),
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Color(0xFFED4956),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}