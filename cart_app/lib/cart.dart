import 'package:cart_app/cartItems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartItems>(
      builder: (context, cartitems, child) => Scaffold(
          backgroundColor: Colors.amber.shade50,
          appBar: AppBar(
            title: const Text(
              'Your cart items',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.black),
            ),
            backgroundColor: Colors.amber,
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: cartitems.items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartitems.items[index],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      IconButton(onPressed: (){
                        cartitems.remove(cartitems.items[index]);
                      }, icon: const Icon(Icons.remove_circle_outline_rounded, color: Colors.red,))
                    ],
                  ),
                );
              })),
    );
  }
}
