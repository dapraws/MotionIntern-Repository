import 'package:flutter/material.dart';
import 'package:motionintern_week2/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
