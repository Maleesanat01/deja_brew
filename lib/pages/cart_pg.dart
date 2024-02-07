// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:deja_brew/models/item.dart';
import 'package:deja_brew/pages/cart_item_card.dart';
import 'package:flutter/material.dart';

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
                  physics:
                      NeverScrollableScrollPhysics(), //disable scroll for list view so that whole page is scrollable through the single child scroll view
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
