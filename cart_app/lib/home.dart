import 'package:cart_app/cart.dart';
import 'package:cart_app/cartItems.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartItems>(
      builder: (context, cartitems, child) =>  Scaffold(
        appBar: AppBar(
          title: const Text(
            'Catalog',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart()));
                }, icon: const Icon(Icons.shopping_cart_rounded), color: Colors.black, iconSize: 35.0,)
          ],
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Column(
            children: [
              myListTile('Pizza Margherita', Colors.pink, cartitems, false),
              myListTile('Spaghetti', Colors.yellow,cartitems,false),
              myListTile('Calzone', Colors.blue, cartitems,false),
              myListTile('Tiramisu', Colors.grey, cartitems,false),
              myListTile('Lasagna', Colors.green, cartitems,false),
              myListTile('Bruschetta', Colors.red, cartitems,false),
              myListTile('Ravioli', Colors.deepPurple, cartitems,false),
              myListTile('Caprese Salad', Colors.orange, cartitems,false),
              myListTile('Ossobuco alla Milanese', Colors.cyan, cartitems,false),
            ],
          )
        ),
      ),
    );
  }
  Widget myListTile(String title, Color color, CartItems cartitem, bool isclicked){
    return Container(
      margin: const EdgeInsets.all(15.0),
      color: color,
      child: ListTile(
        title: Text(title),
        trailing: IconButton(onPressed: (){
          isclicked=!isclicked;
          cartitem.onclick(title, isclicked);
        },icon: isclicked? const Icon(Icons.check):const Icon(Icons.add)),
      ),
    );
  }
}
