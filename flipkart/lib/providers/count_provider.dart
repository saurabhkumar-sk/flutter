import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int  get counter=> _count;
 
  void setCount() {
    _count++;
    notifyListeners();
  }
}
