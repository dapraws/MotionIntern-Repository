import 'package:flutter/material.dart';
import 'package:motionintern_week2/pages/calls_page.dart';
import 'package:motionintern_week2/pages/chats_page.dart';
import 'package:motionintern_week2/pages/updates_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            overlayColor:
                MaterialStatePropertyAll(Colors.white.withOpacity(0.2)),
            tabs: const [
              Tab(text: "Chats"),
              Tab(text: "Updates"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsPage(),
            UpdatesPage(),
            CallsPage(),
          ],
        ),
      ),
    );
  }
}
