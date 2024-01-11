import 'package:darrel_motionintern_week_1/models/coffee.dart';
import 'package:darrel_motionintern_week_1/pages/transaction_page.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final Coffee coffee;

  const ProductPage({
    super.key,
    required this.coffee,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                Icons.favorite,
                color: Color(0xFFED4956),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 380,
                        height: 400,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(widget.coffee.imagePath),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.coffee.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        widget.coffee.price,
                        style: TextStyle(
                          color: Color(0xFF00623B),
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFF00623B),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Add to bag",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
