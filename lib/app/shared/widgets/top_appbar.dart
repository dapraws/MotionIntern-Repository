import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const TopAppBar({Key? key, this.height = kToolbarHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/images/instagram-logo.png',
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_outline_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.messenger_outline_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box_outlined),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
