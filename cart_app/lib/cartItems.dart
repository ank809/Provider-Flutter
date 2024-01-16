import 'package:flutter/material.dart';

class CartItems extends ChangeNotifier {
  List<String> items = [];

  void onclickadd(String title) {
      items.add(title);
    notifyListeners();
  }
  bool isItemInCart(String title){
    return items.contains(title);
  }

  void remove(String title){
    items.remove(title);
    notifyListeners();
  }
}
