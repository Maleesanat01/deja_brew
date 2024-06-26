// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables
//cart_pg.dart file
import '../models/item.dart';
import '../pages/cart_item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPg extends StatelessWidget {
  const CartPg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
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
                  SizedBox(height: 30),
                  //if the cart is empty
                  if (cart.getUserCart().isEmpty)
                    //show message if the cart is empty
                    Text(
                      'Your cart is empty',
                      style: TextStyle(fontSize: 16),
                    )
                  else
                    // else display the list of items
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: cart.getUserCart().length,
                        itemBuilder: (context, index) {
                          Item individualItem = cart.getUserCart()[
                              index]; //display each item in userCart list index, by index using CartItemCard
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: CartItemCard(item: individualItem),
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
                // Checkout logic
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
      },
    );
  }
}
