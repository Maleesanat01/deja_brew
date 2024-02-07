class Item {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  String selectedSize; //nullable
  int selectedQuantity; //nullable
  //String? selectedDetails; //nullable

  // Constructor
  Item({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    this.selectedSize = 'Medium',
    this.selectedQuantity = 2,
    //this.selectedDetails,
  });
}