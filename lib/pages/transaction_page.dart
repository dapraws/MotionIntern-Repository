import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_outlined,
            size: 35,
          ),
        ),
        title: Container(
          width: 43,
          height: 44,
          child: Image(
            image: AssetImage(
              "assets/images/logo.png",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.ios_share,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
        child: Container(
          child: Row(
            children: [
              // Invoice Pesanan
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle),
                ],
              ),

              // Detail Pesanan

              // Download button
            ],
          ),
        ),
      ),
    );
  }
}
