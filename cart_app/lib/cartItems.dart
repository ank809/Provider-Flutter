import 'package:flutter/material.dart';

class CartItems extends ChangeNotifier {
  List<String> items = [];

  void onclick(String title, bool isclicked) {
    if (isclicked) {
      items.add(title);
    } else {
      items.remove(title);
    }
    notifyListeners();
  }

  void remove(String title){
    items.remove(title);
    notifyListeners();
  }
}
