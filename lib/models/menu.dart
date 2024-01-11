import 'package:darrel_motionintern_week_1/models/coffee.dart';
import 'package:flutter/material.dart';

class Menu extends ChangeNotifier {
  // Coffee Menu
  final List<Coffee> _coffeeMenu = [
    // Chocolate Frappuccino
    Coffee(
      name: "Chocolate Frappuccino",
      price: "\$20.00",
      imagePath: "assets/images/chocoFrap.png",
    ),

    // Green Tea Frappuccino
    Coffee(
      name: "Chocolate Frappuccino",
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

  List<Coffee> get foodMenu => _coffeeMenu;
}
