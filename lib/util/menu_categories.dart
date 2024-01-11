import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCategories extends StatelessWidget {
  final String menuCategories;
  final bool isSelected;
  final VoidCallback onTap;

  MenuCategories({
    required this.menuCategories,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isSelected ? Color(0xFF00623B) : Colors.grey),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: Text(
                menuCategories,
                style: GoogleFonts.raleway(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
