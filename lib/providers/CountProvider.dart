import 'package:flutter/material.dart';

class Countprovider with ChangeNotifier{
  int _counter = 0;

  int get counter => _counter;

  void increment(){
    _counter++;
    notifyListeners();
  }
}