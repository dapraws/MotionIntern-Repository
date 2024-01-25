import 'package:flutter/material.dart';
import 'package:motionintern_week2/themes/colors.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(4),
          child: Container(
            color: blackAccent[100],
          ),
        );
      },
    );
  }
}
