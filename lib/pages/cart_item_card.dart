// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:deja_brew/models/item.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final Item item;

  CartItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      //width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(255, 248, 241, 239),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(item.imagePath, height: 130),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(item.name, style: TextStyle(fontSize: 16)),
                SizedBox(height: 5),
                Text(
                  '\$${item.price.toString()}', //to put $ sign with price
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 5),
                Text(item.selectedSize, style: TextStyle(fontSize: 16)),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return Row(
                        children: [
                          _buildQuantityButton('-', () {
                            // Decrement logic
                            if (item.selectedQuantity > 0) {
                              setState(() {
                                item.selectedQuantity--;
                              });
                            }
                          }),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(item.selectedQuantity.toString(),
                                style: TextStyle(fontSize: 18)),
                          ),
                          _buildQuantityButton('+', () {
                            // Increment logic
                            setState(() {
                              item.selectedQuantity++;
                            });
                          }),
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

  Widget _buildQuantityButton(String label, Function onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 236, 224, 220),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        label,
        style: TextStyle(color: Color.fromARGB(255, 66, 33, 21)),
      ),
    );
  }
}
