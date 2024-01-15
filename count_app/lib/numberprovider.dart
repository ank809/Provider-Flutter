import 'package:flutter/material.dart';
class NumberListProvider extends ChangeNotifier{
  List<int> number= [1, 2,3];
  void add(){
    int last= number.last;
    number.add(last+1);
    notifyListeners();
  }

}