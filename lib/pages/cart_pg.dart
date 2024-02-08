// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:deja_brew/models/item.dart';
import 'package:deja_brew/pages/cart_item_card.dart';

class CartPg extends StatelessWidget {
  const CartPg({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Cart',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    Item details = getDefaultUserCart(index);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: CartItemCard(item: details),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Acheckout logic
          },
          label: Row(
            children: [
              Text(
                'Checkout',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 5),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 90, 49, 32),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

Item getDefaultUserCart(int index) {
  switch (index) {
    case 0:
      return Item(
        name: 'Iced Coffee',
        price: '3.99',
        imagePath: 'assets/images/iced_coffee.jpg',
        description: 'Chilled Coffee Refreshment',
        selectedQuantity: 2,
        selectedSize: 'Small',
      );

    default:
      return Item(
        name: 'Iced Coffee',
        price: '3.99',
        imagePath: 'assets/images/iced_coffee.jpg',
        description: 'Chilled Coffee Refreshment',
        selectedQuantity: 2,
        selectedSize: 'Small',
      );
  }
}
