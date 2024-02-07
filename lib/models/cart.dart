import 'package:deja_brew/models/item.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  //instance variables for lists
  List<Item> itemShop;
  List<Item> topPicks;
  List<Item> hotBeverages;
  List<Item> coldBeverages;
  List<Item> desserts;
  List<Item> userCart;

//defining lists in constructor
  Cart()
      : itemShop = [
          Item(
            name: 'Machiato',
            price: '2.75',
            imagePath: 'assets/images/machiato.jpg',
            description: 'Bold, Espresso, Layered',
          ),
          Item(
            name: 'Latte',
            price: '3.25',
            imagePath: 'assets/images/latte.jpeg',
            description: 'Creamy & Steamed',
          ),
          Item(
            name: 'Mocha',
            price: '3.50',
            imagePath: 'assets/images/mocha.jpg',
            description: 'Mochalicious & Frothy',
          ),
          Item(
            name: 'Cappuccino',
            price: '3.75',
            imagePath: 'assets/images/cappuccino.jpg',
            description: 'Rich, Frothy, Espresso',
          ),
          Item(
            name: 'Espresso',
            price: '2.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust',
          ),
          Item(
            name: 'Black Coffee',
            price: '2.50',
            imagePath: 'assets/images/black_coffee.jpg',
            description: 'Strong, Simple, Robust',
          ),
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee Refreshment',
          ),
          Item(
            name: 'Iced Americano',
            price: '4.49',
            imagePath: 'assets/images/iced_americano.jpg',
            description: 'Chilled Espresso Blend',
          ),
          Item(
            name: 'Frappuccino',
            price: '5.99',
            imagePath: 'assets/images/frappuccino.jpg',
            description: 'Frosty Blended Indulgence',
          ),
          Item(
            name: 'Cold Brew',
            price: '6.99',
            imagePath: 'assets/images/cold_brew.jpg',
            description: 'Smooth Bold Elixir',
          ),
          Item(
            name: 'Caramel Cheesecake',
            price: '3.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
          Item(
            name: 'Brownie',
            price: '4.49',
            imagePath: 'assets/images/brownie.jpg',
            description: 'Fudgy Chocolate Bliss',
          ),
          Item(
            name: 'Cookies',
            price: '5.99',
            imagePath: 'assets/images/cookies.jpg',
            description: 'Crispy Sweet Delight',
          ),
          Item(
            name: 'Lava Cake',
            price: '6.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Red Velvet',
            price: '6.99',
            imagePath: 'assets/images/red_velvet.jpg',
            description: 'Velvet-textured Sweetness',
          ),
          Item(
            name: 'Tiramisu',
            price: '6.99',
            imagePath: 'assets/images/tiramisu.jpg',
            description: 'Coffee-infused Delight',
          ),
        ],
        topPicks = [
          Item(
            name: 'Espresso',
            price: '3.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust.',
          ),
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee',
          ),
          Item(
            name: 'Lava Cake',
            price: '5.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Caramel Cheesecake',
            price: '6.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
        ],
        hotBeverages = [
          Item(
            name: 'Machiato',
            price: '2.75',
            imagePath: 'assets/images/machiato.jpg',
            description: 'Bold, Espresso, Layered',
          ),
          Item(
            name: 'Latte',
            price: '3.25',
            imagePath: 'assets/images/latte.jpeg',
            description: 'Creamy & Steamed',
          ),
          Item(
            name: 'Mocha',
            price: '3.50',
            imagePath: 'assets/images/mocha.jpg',
            description: 'Mochalicious & Frothy',
          ),
          Item(
            name: 'Cappuccino',
            price: '3.75',
            imagePath: 'assets/images/cappuccino.jpg',
            description: 'Rich, Frothy, Espresso',
          ),
          Item(
            name: 'Espresso',
            price: '2.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust',
          ),
          Item(
            name: 'Black Coffee',
            price: '2.50',
            imagePath: 'assets/images/black_coffee.jpg',
            description: 'Strong, Simple, Robust',
          ),
        ],
        coldBeverages = [
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee',
          ),
          Item(
            name: 'Iced Americano',
            price: '4.49',
            imagePath: 'assets/images/iced_americano.jpg',
            description: 'Chilled Espresso Blend',
          ),
          Item(
            name: 'Frappuccino',
            price: '5.99',
            imagePath: 'assets/images/frappuccino.jpg',
            description: 'Frosty Blended Indulgence',
          ),
          Item(
            name: 'Cold Brew',
            price: '6.99',
            imagePath: 'assets/images/cold_brew.jpg',
            description: 'Smooth Bold Elixir',
          ),
        ],
        desserts = [
          Item(
            name: 'Caramel Cheesecake',
            price: '3.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
          Item(
            name: 'Brownie',
            price: '4.49',
            imagePath: 'assets/images/brownie.jpg',
            description: 'Fudgy Chocolate Bliss',
          ),
          Item(
            name: 'Cookies',
            price: '5.99',
            imagePath: 'assets/images/cookies.jpg',
            description: 'Crispy Sweet Delight',
          ),
          Item(
            name: 'Lava Cake',
            price: '6.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Red Velvet',
            price: '6.99',
            imagePath: 'assets/images/red_velvet.jpg',
            description: 'Velvet-textured Sweetness',
          ),
          Item(
            name: 'Tiramisu',
            price: '6.99',
            imagePath: 'assets/images/tiramisu.jpg',
            description: 'Coffee-infused Delight',
          ),
        ],
        userCart = [];

//Methods to get categorized items
//function to get top picks
  List<Item> getTopPicksDetails() {
    return topPicks;
  }

// Function to get details for hot beverages
  List<Item> getHotBevDetails() {
    return hotBeverages;
  }

// Function to get details for cold bevs
  List<Item> getColdBevDetails() {
    return coldBeverages;
  }

// Function to get details for desserts
  List<Item> getDessertDetails() {
    return desserts;
  }

  //get list of items for sale
  List<Item> getItemList() {
    return itemShop;
  }

  //get user cart
  List<Item> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}

/*NO CART PAGE DISPLAY YET
import 'package:cafe_app/models/item.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  //instance variables for lists
  List<Item> itemShop;
  List<Item> topPicks;
  List<Item> hotBeverages;
  List<Item> coldBeverages;
  List<Item> desserts;
  List<Item> userCart;

//defining lists in constructor
  Cart()
      : itemShop = [
          Item(
            name: 'Machiato',
            price: '2.75',
            imagePath: 'assets/images/machiato.jpg',
            description: 'Bold, Espresso, Layered',
          ),
          Item(
            name: 'Latte',
            price: '3.25',
            imagePath: 'assets/images/latte.jpeg',
            description: 'Creamy & Steamed',
          ),
          Item(
            name: 'Mocha',
            price: '3.50',
            imagePath: 'assets/images/mocha.jpg',
            description: 'Mochalicious & Frothy',
          ),
          Item(
            name: 'Cappuccino',
            price: '3.75',
            imagePath: 'assets/images/cappuccino.jpg',
            description: 'Rich, Frothy, Espresso',
          ),
          Item(
            name: 'Espresso',
            price: '2.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust',
          ),
          Item(
            name: 'Black Coffee',
            price: '2.50',
            imagePath: 'assets/images/black_coffee.jpg',
            description: 'Strong, Simple, Robust',
          ),
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee Refreshment',
          ),
          Item(
            name: 'Iced Americano',
            price: '4.49',
            imagePath: 'assets/images/iced_americano.jpg',
            description: 'Chilled Espresso Blend',
          ),
          Item(
            name: 'Frappuccino',
            price: '5.99',
            imagePath: 'assets/images/frappuccino.jpg',
            description: 'Frosty Blended Indulgence',
          ),
          Item(
            name: 'Cold Brew',
            price: '6.99',
            imagePath: 'assets/images/cold_brew.jpg',
            description: 'Smooth Bold Elixir',
          ),
          Item(
            name: 'Caramel Cheesecake',
            price: '3.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
          Item(
            name: 'Brownie',
            price: '4.49',
            imagePath: 'assets/images/brownie.jpg',
            description: 'Fudgy Chocolate Bliss',
          ),
          Item(
            name: 'Cookies',
            price: '5.99',
            imagePath: 'assets/images/cookies.jpg',
            description: 'Crispy Sweet Delight',
          ),
          Item(
            name: 'Lava Cake',
            price: '6.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Red Velvet',
            price: '6.99',
            imagePath: 'assets/images/red_velvet.jpg',
            description: 'Velvet-textured Sweetness',
          ),
          Item(
            name: 'Tiramisu',
            price: '6.99',
            imagePath: 'assets/images/tiramisu.jpg',
            description: 'Coffee-infused Delight',
          ),
        ],
        topPicks = [
          Item(
            name: 'Espresso',
            price: '3.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust.',
          ),
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee',
          ),
          Item(
            name: 'Lava Cake',
            price: '5.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Caramel Cheesecake',
            price: '6.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
        ],
        hotBeverages = [
          Item(
            name: 'Machiato',
            price: '2.75',
            imagePath: 'assets/images/machiato.jpg',
            description: 'Bold, Espresso, Layered',
          ),
          Item(
            name: 'Latte',
            price: '3.25',
            imagePath: 'assets/images/latte.jpeg',
            description: 'Creamy & Steamed',
          ),
          Item(
            name: 'Mocha',
            price: '3.50',
            imagePath: 'assets/images/mocha.jpg',
            description: 'Mochalicious & Frothy',
          ),
          Item(
            name: 'Cappuccino',
            price: '3.75',
            imagePath: 'assets/images/cappuccino.jpg',
            description: 'Rich, Frothy, Espresso',
          ),
          Item(
            name: 'Espresso',
            price: '2.99',
            imagePath: 'assets/images/espresso.jpg',
            description: 'Intense, Bold, Robust',
          ),
          Item(
            name: 'Black Coffee',
            price: '2.50',
            imagePath: 'assets/images/black_coffee.jpg',
            description: 'Strong, Simple, Robust',
          ),
        ],
        coldBeverages = [
          Item(
            name: 'Iced Coffee',
            price: '3.99',
            imagePath: 'assets/images/iced_coffee.jpg',
            description: 'Chilled Coffee',
          ),
          Item(
            name: 'Iced Americano',
            price: '4.49',
            imagePath: 'assets/images/iced_americano.jpg',
            description: 'Chilled Espresso Blend',
          ),
          Item(
            name: 'Frappuccino',
            price: '5.99',
            imagePath: 'assets/images/frappuccino.jpg',
            description: 'Frosty Blended Indulgence',
          ),
          Item(
            name: 'Cold Brew',
            price: '6.99',
            imagePath: 'assets/images/cold_brew.jpg',
            description: 'Smooth Bold Elixir',
          ),
        ],
        desserts = [
          Item(
            name: 'Caramel Cheesecake',
            price: '3.99',
            imagePath: 'assets/images/caramel_cheesecake.jpg',
            description: 'Sweet Caramel Infusion',
          ),
          Item(
            name: 'Brownie',
            price: '4.49',
            imagePath: 'assets/images/brownie.jpg',
            description: 'Fudgy Chocolate Bliss',
          ),
          Item(
            name: 'Cookies',
            price: '5.99',
            imagePath: 'assets/images/cookies.jpg',
            description: 'Crispy Sweet Delight',
          ),
          Item(
            name: 'Lava Cake',
            price: '6.99',
            imagePath: 'assets/images/lava_cake1.jpg',
            description: 'Chocolate Delight',
          ),
          Item(
            name: 'Red Velvet',
            price: '6.99',
            imagePath: 'assets/images/red_velvet.jpg',
            description: 'Velvet-textured Sweetness',
          ),
          Item(
            name: 'Tiramisu',
            price: '6.99',
            imagePath: 'assets/images/tiramisu.jpg',
            description: 'Coffee-infused Delight',
          ),
        ],
        userCart = [];

//Methods to get categorized items
//function to get top picks
  List<Item> getTopPicksDetails() {
    return topPicks;
  }

// Function to get details for hot beverages
  List<Item> getHotBevDetails() {
    return hotBeverages;
  }

// Function to get details for cold bevs
  List<Item> getColdBevDetails() {
    return coldBeverages;
  }

// Function to get details for desserts
  List<Item> getDessertDetails() {
    return desserts;
  }

  //get list of items for sale
  List<Item> getItemList() {
    return itemShop;
  }

  //get user cart
  List<Item> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Item item) {
    userCart.add(item);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Item item) {
    userCart.remove(item);
    notifyListeners();
  }
}

 */
