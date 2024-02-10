class Item {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  String selectedSize;
  int selectedQuantity;

  // Constructor
  Item({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    this.selectedSize = '',
    this.selectedQuantity = 0,
  });
}
