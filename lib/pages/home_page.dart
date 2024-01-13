import 'package:darrel_motionintern_week_1/models/coffee.dart';
import 'package:darrel_motionintern_week_1/pages/product_page.dart';
import 'package:darrel_motionintern_week_1/util/menu_categories.dart';
import 'package:darrel_motionintern_week_1/util/menu_tiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Categories
  final List categories = [
    ["All", true],
    ["Coffee", false],
    ["Tea", false],
    ["Drinks", false]
  ];

  void categoriesSelected(int index) {
    setState(() {
      for (int i = 0; i < categories.length; i++) {
        categories[i][1] = false;
      }
      categories[index][1] = true;
    });
  }

  // Menus
  List menus = [
    // Chocolate Frappuccino
    Coffee(
      name: "Chocolate Frappuccino",
      price: "\$20.00",
      imagePath: "assets/images/chocoFrap.png",
    ),

    // Green Tea Frappuccino
    Coffee(
      name: "Green Tea Frappuccino",
      price: "\$25.00",
      imagePath: "assets/images/greenTeaFrap.png",
    ),

    // Strawberry Frappuccino
    Coffee(
      name: "Strawberry Frappuccino",
      price: "\$30.00",
      imagePath: "assets/images/strawberryFrap.png",
    ),
  ];

  // Menu Navigator
  void navigateToMenuDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductPage(
          coffee: menus[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
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
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Our way of loving you back",
              style: GoogleFonts.raleway(
                  fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),

          SizedBox(height: 25),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          // Categories
          Container(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return MenuCategories(
                  menuCategories: categories[index][0],
                  isSelected: categories[index][1],
                  onTap: () {
                    categoriesSelected(index);
                  },
                );
              },
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.raleway(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.raleway(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF00623B),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Menu
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menus.length,
              itemBuilder: (context, index) {
                return MenuTiles(
                  coffee: menus[index],
                  onTap: () {
                    navigateToMenuDetails(index);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 130),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
            backgroundColor: Color(0xFF00623B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet),
            label: '',
            backgroundColor: Color(0xFF00623B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: '',
            backgroundColor: Color(0xFF00623B),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: '',
            backgroundColor: Color(0xFF00623B),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
