// ignore_for_file: must_be_immutable, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:deja_brew/models/cart.dart';
import 'package:deja_brew/models/item.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  Item item;
  ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 248, 241, 239),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8),
            child: Text(
              item.name,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8),
            child: Text(
              item.price,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 8),
            child: Text(
              item.description,
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 22),
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 66, 33, 21)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 2.0),
                child: TextButton(
                  onPressed: () {
                    _showAddToCartDialog(context);
                  },
                  child: Text('Add to cart',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAddToCartDialog(BuildContext context) {
    // variables with default slected values to store user selected size and quantity
    String selectedSize = 'Small';
    int selectedQuantity = 1;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          //so no need of stateful widget
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Select order details'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10),
                  Text('Select Size', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  //buttons to select size
                  Row(
                    children: [
                      //created widget button function for size small
                      _buildSizeButton('Small', selectedSize, () {
                        setState(() {
                          selectedSize = 'Small';
                        });
                      }),
                      SizedBox(width: 8),
                      //created widgte function for size medium
                      _buildSizeButton('Medium', selectedSize, () {
                        setState(() {
                          selectedSize = 'Medium';
                        });
                      }),
                      SizedBox(width: 8),
                      //created widget button function for size large
                      _buildSizeButton('Large', selectedSize, () {
                        setState(() {
                          selectedSize = 'Large';
                        });
                      }),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Select Quantity', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  // increment and decrement quantity buttons
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: [
                        //button function to decrement quantity
                        _buildQuantityButton('-', selectedQuantity, () {
                          setState(() {
                            if (selectedQuantity > 1) {
                              selectedQuantity--;
                            }
                          });
                        }),
                        //display selecte3ed quantity between increment and decrement button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(selectedQuantity.toString(),
                              style: TextStyle(fontSize: 18)),
                        ),
                        //button function to increment quantity
                        _buildQuantityButton('+', selectedQuantity, () {
                          setState(() {
                            selectedQuantity++;
                          });
                        }),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                //cancel add to cart in dialog box
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Color.fromARGB(255, 66, 33, 21)),
                  ),
                ),
                //add button to add item to cart in dialog box
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 33, 21),
                  ),
                  onPressed: () {
                    //selected size and quantity stored as variable in selectedDetails variable from item class
                    //String selectedDetails =
                    // '$selectedSize, Quantity: $selectedQuantity';

                    // Add item to cart with selected details
                    Item selectedItem = Item(
                      name: item.name,
                      price: item.price,
                      imagePath: item.imagePath,
                      description: item.description,
                      //selectedQuantity: selectedQuantity,
                      //selectedSize: selectedSize,
                      //selectedDetails:
                      //selectedDetails, //add size and quantity selected
                    );

                    // Add the modified item to the user's cart
                    Cart().addItemToCart(selectedItem);

                    // Show success message
                    _showSuccessMessage(context);

                    Navigator.pop(context); // Close the dialog
                  },
                  child: Text('Add'),
                ),
              ],
            );
          },
        );
      },
    );
  }

//button widgets for small, medium, large buttons
  Widget _buildSizeButton(
      String size, String selectedSize, Function onPressed) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: size == selectedSize
              ? Color.fromARGB(255, 66, 33, 21)
              : Color.fromARGB(255, 236, 224, 220),
        ),
        onPressed: onPressed as void Function(),
        child: Text(
          size,
          style: TextStyle(
            color: size == selectedSize
                ? Color.fromARGB(255, 236, 224, 220)
                : Color.fromARGB(255, 66, 33, 21),
          ),
        ));
  }

//button widget for increment and decrement quantity button
  Widget _buildQuantityButton(
      String label, int selectedQuantity, Function onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 236, 224, 220),
      ),
      onPressed: onPressed as void Function(),
      child: Text(
        label,
        style: TextStyle(color: Color.fromARGB(255, 66, 33, 21)),
      ),
    );
  }

  void _showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromARGB(255, 88, 63, 53),
        content: Text('Added to cart successfully!'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
