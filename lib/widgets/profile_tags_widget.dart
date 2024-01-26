import 'package:flutter/material.dart';

class ProfileTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1),
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(1),
            child: Container(
              color: Colors.grey[400],
            ),
          );
        },
      ),
    );
  }
}
