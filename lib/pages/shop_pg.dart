// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, depend_on_referenced_packages, sort_child_properties_last
//shop_pg.dart file

//no actuall add to cart function just static display
import 'package:deja_brew/models/item.dart';
import 'package:deja_brew/pages/item_card.dart';
import 'package:flutter/material.dart';

class ShopPg extends StatelessWidget {
  const ShopPg({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover the latest offers for you...',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 121, 96, 87)),
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/offer1.jpg',
                        height: 210,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/OffersPage');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Text(
                            'See More',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.brown.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Text(
                  'Top Picks',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),

                // Horizontal scroll for hot picks
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Item details = getTopPicksDetails(
                          index); //displayed using switch statement not lits in crat class
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(height: 40),
                Text(
                  'Hot Beverages',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      Item details = getHotBevDetails(
                          index); //displayed using switch statement not lits in crat class
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(height: 40),
                Text(
                  'Cold Beverages',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Item details = getColdBevDetails(
                          index); //displayed using switch statement not lits in crat class
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Desserts',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      Item details = getDessertDetails(
                          index); //displayed using switch statement not lits in crat class
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Item getTopPicksDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Espresso',
        price: '3.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust.',
      );
    case 1:
      return Item(
        name: 'Iced Coffee',
        price: '3.99',
        imagePath: 'assets/images/iced_coffee.jpg',
        description: 'Chilled Coffee Refreshment',
      );
    case 2:
      return Item(
        name: 'Lava Cake',
        price: '5.99',
        imagePath: 'assets/images/lava_cake1.jpg',
        description: 'Chocolate Delight',
      );
    case 3:
      return Item(
        name: 'Caramel Cheesecake',
        price: '6.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
    default:
      return Item(
        name: 'Espresso',
        price: '3.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust.',
      );
  }
}

// Function to get details for hot beverages
Item getHotBevDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Machiato',
        price: '2.75',
        imagePath: 'assets/images/machiato.jpg',
        description: 'Bold, Espresso, Layered',
      );
    case 1:
      return Item(
        name: 'Latte',
        price: '3.25',
        imagePath: 'assets/images/latte.jpeg',
        description: 'Creamy & Steamed',
      );
    case 2:
      return Item(
        name: 'Mocha',
        price: '3.50',
        imagePath: 'assets/images/mocha.jpg',
        description: 'Mochalicious & Frothy',
      );
    case 3:
      return Item(
        name: 'Cappuccino',
        price: '3.75',
        imagePath: 'assets/images/cappuccino.jpg',
        description: 'Rich, Frothy, Espresso',
      );
    case 4:
      return Item(
        name: 'Espresso',
        price: '2.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust',
      );
    case 5:
      return Item(
        name: 'Black Coffee',
        price: '2.50',
        imagePath: 'assets/images/black_coffee.jpg',
        description: 'Strong, Simple, Robust',
      );
    default:
      return Item(
        name: 'Machiato',
        price: '2.75',
        imagePath: 'assets/images/machiato.jpg',
        description: 'Bold, Espresso, Layered',
      );
  }
}

// Function to get details for cold bevs
Item getColdBevDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Iced Coffee',
        price: '3.99',
        imagePath: 'assets/images/iced_coffee.jpg',
        description: 'Chilled Coffee Refreshment',
      );
    case 1:
      return Item(
        name: 'Iced Americano',
        price: '4.49',
        imagePath: 'assets/images/iced_americano.jpg',
        description: 'Chilled Espresso Blend',
      );
    case 2:
      return Item(
        name: 'Frappuccino',
        price: '5.99',
        imagePath: 'assets/images/frappuccino.jpg',
        description: 'Frosty Blended Indulgence',
      );
    case 3:
      return Item(
        name: 'Cold Brew',
        price: '6.99',
        imagePath: 'assets/images/cold_brew.jpg',
        description: 'Smooth Bold Elixir',
      );
    default:
      return Item(
        name: 'Iced Americano',
        price: '4.49',
        imagePath: 'assets/images/iced_americano.jpg',
        description: 'Chilled Espresso Blend',
      );
  }
}

// Function to get details for desserts
Item getDessertDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Caramel Cheesecake',
        price: '3.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
    case 1:
      return Item(
        name: 'Brownie',
        price: '4.49',
        imagePath: 'assets/images/brownie.jpg',
        description: 'Fudgy Chocolate Bliss',
      );
    case 2:
      return Item(
        name: 'Cookies',
        price: '5.99',
        imagePath: 'assets/images/cookies.jpg',
        description: 'Crispy Sweet Delight',
      );
    case 3:
      return Item(
        name: 'Lava Cake',
        price: '6.99',
        imagePath: 'assets/images/lava_cake1.jpg',
        description: 'Chocolate Delight',
      );
    case 4:
      return Item(
        name: 'Red Velvet',
        price: '6.99',
        imagePath: 'assets/images/red_velvet.jpg',
        description: 'Velvet-textured Sweetness',
      );
    case 5:
      return Item(
        name: 'Tiramisu',
        price: '6.99',
        imagePath: 'assets/images/tiramisu.jpg',
        description: 'Coffee-infused Delight',
      );
    default:
      return Item(
        name: 'Caramel Cheesecake',
        price: '3.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
  }
}



/*COFFEE TYPES
 Hot beverages
              Image.asset('assets/images/espresso.jpg'),
              Image.asset('assets/images/latte.jpg'),
              Image.asset('assets/images/mocha.jpg'),
              Image.asset('assets/images/cappuccino.jpg'),
              Image.asset('assets/images/machiato.jpg'),
              Image.asset('assets/images/black_coffee.jpg'),
   
   Cold beverages
              Image.asset('assets/images/iced_coffee.jpg'),
              Image.asset('assets/images/iced_americano.jpg'),
              Image.asset('assets/images/cold_brew.jpg'),
              Image.asset('assets/images/frappuccino.jpg'),

-Espresso
-Latte
-Mocha
-Cappuccino
-Machiato
-Black coffee

-Iced 
-Iced americano
-Iced coffee
-Frappuccino
-cold brew
 */ 


/*
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:cafe_app/models/item.dart'; // Import the existing Item class
import 'package:cafe_app/pages/item_card.dart';
import 'package:flutter/material.dart';

class ShopPg extends StatelessWidget {
  const ShopPg({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/banner.jpg',
                  height: 200,
                  width: double.infinity,
                ),

                SizedBox(height: 30),
                Text(
                  'Top Picks',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 30),

                // Horizontal scroll for hot picks
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Item details = getTopPicksDetails(index);
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(height: 30),
                Text(
                  'Hot Beverages',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      Item details = getHotBevDetails(index);
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),

                SizedBox(height: 30),
                Text(
                  'Cold Beverages',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Item details = getColdBevDetails(index);
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Desserts',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                // Horizontal scroll for hot beverages
                Container(
                  height: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      Item details = getDessertDetails(index);
                      return Row(
                        children: [
                          SizedBox(
                            width: 220,
                            child: ItemCard(
                              item: details,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Item getTopPicksDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Espresso',
        price: '3.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust.',
      );
    case 1:
      return Item(
        name: 'Iced Americano',
        price: '4.49',
        imagePath: 'assets/images/iced_americano.jpg',
        description: 'Chilled Espresso Blend',
      );
    case 2:
      return Item(
        name: 'Lava Cake',
        price: '5.99',
        imagePath: 'assets/images/lava_cake.jpg',
        description: 'Decadent Chocolate Delight',
      );
    case 3:
      return Item(
        name: 'Caramel Cheesecake',
        price: '6.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
    default:
      return Item(
        name: 'Espresso',
        price: '3.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust.',
      );
  }
}

// Function to get details for hot beverages
Item getHotBevDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Machiato',
        price: '2.75',
        imagePath: 'assets/images/machiato.jpg',
        description: 'Bold, Espresso, Layered',
      );
    case 1:
      return Item(
        name: 'Latte',
        price: '3.25',
        imagePath: 'assets/images/latte.jpg',
        description: 'Creamy, Espresso, Steamed',
      );
    case 2:
      return Item(
        name: 'Mocha',
        price: '3.50',
        imagePath: 'assets/images/mocha.jpg',
        description: 'Chocolate, Espresso, Frothy',
      );
    case 3:
      return Item(
        name: 'Cappuccino',
        price: '3.75',
        imagePath: 'assets/images/cappuccino.jpg',
        description: 'Rich, Frothy, Espresso',
      );
    case 4:
      return Item(
        name: 'Espresso',
        price: '2.99',
        imagePath: 'assets/images/espresso.jpg',
        description: 'Intense, Bold, Robust',
      );
    case 5:
      return Item(
        name: 'Black Coffee',
        price: '2.50',
        imagePath: 'assets/images/black_coffee.jpg',
        description: 'Strong, Simple, Robust',
      );
    default:
      return Item(
        name: 'Machiato',
        price: '2.75',
        imagePath: 'assets/images/machiato.jpg',
        description: 'Bold, Espresso, Layered',
      );
  }
}

// Function to get details for cold bevs
Item getColdBevDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Iced Coffee',
        price: '3.99',
        imagePath: 'assets/images/iced_coffee.jpg',
        description: 'Chilled Coffee Refreshment',
      );
    case 1:
      return Item(
        name: 'Iced Americano',
        price: '4.49',
        imagePath: 'assets/images/iced_americano.jpg',
        description: 'Chilled Espresso Blend',
      );
    case 2:
      return Item(
        name: 'Frappuccino',
        price: '5.99',
        imagePath: 'assets/images/frappuccino.jpg',
        description: 'Frosty Blended Indulgence',
      );
    case 3:
      return Item(
        name: 'Cold Brew',
        price: '6.99',
        imagePath: 'assets/images/cold_brew.jpg',
        description: 'Smooth Bold Elixir',
      );
    default:
      return Item(
        name: 'Iced Americano',
        price: '4.49',
        imagePath: 'assets/images/iced_americano.jpg',
        description: 'Chilled Espresso Blend',
      );
  }
}

// Function to get details for desserts
Item getDessertDetails(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Caramel Cheesecake',
        price: '3.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
    case 1:
      return Item(
        name: 'Brownie',
        price: '4.49',
        imagePath: 'assets/images/brownie.jpg',
        description: 'Fudgy Chocolate Bliss',
      );
    case 2:
      return Item(
        name: 'Cookies',
        price: '5.99',
        imagePath: 'assets/images/cookies.jpg',
        description: 'Crispy Sweet Delight',
      );
    case 3:
      return Item(
        name: 'Lava Cake',
        price: '6.99',
        imagePath: 'assets/images/lava_cake.jpg',
        description: 'Chocolate Indulgence',
      );
    case 4:
      return Item(
        name: 'Red Velvet',
        price: '6.99',
        imagePath: 'assets/images/red_velvet.jpg',
        description: 'Velvet-textured Sweetness',
      );
    case 5:
      return Item(
        name: 'Tiramisu',
        price: '6.99',
        imagePath: 'assets/images/tiramisu.jpg',
        description: 'Coffee-infused Delight',
      );
    default:
      return Item(
        name: 'Caramel Cheesecake',
        price: '3.99',
        imagePath: 'assets/images/caramel_cheesecake.jpg',
        description: 'Sweet Caramel Infusion',
      );
  }
}



/*COFFEE TYPES
 Hot beverages
              Image.asset('assets/images/espresso.jpg'),
              Image.asset('assets/images/latte.jpg'),
              Image.asset('assets/images/mocha.jpg'),
              Image.asset('assets/images/cappuccino.jpg'),
              Image.asset('assets/images/machiato.jpg'),
              Image.asset('assets/images/black_coffee.jpg'),
   
   Cold beverages
              Image.asset('assets/images/iced_coffee.jpg'),
              Image.asset('assets/images/iced_americano.jpg'),
              Image.asset('assets/images/cold_brew.jpg'),
              Image.asset('assets/images/frappuccino.jpg'),

-Espresso
-Latte
-Mocha
-Cappuccino
-Machiato
-Black coffee

-Iced 
-Iced americano
-Iced coffee
-Frappuccino
-cold brew
 */ 
*/