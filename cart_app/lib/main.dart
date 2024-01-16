import 'package:cart_app/cartItems.dart';
import 'package:cart_app/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CartItems())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage(),
      ),
    );
  }
}