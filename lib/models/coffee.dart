class Coffee {
  String name;
  String price;
  String imagePath;

  Coffee({
    required this.name,
    required this.price,
    required this.imagePath,
  });

  String get _name => name;
  String get _price => price;
  String get _image => imagePath;
}
