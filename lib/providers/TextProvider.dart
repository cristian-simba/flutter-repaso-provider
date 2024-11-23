import 'package:flutter/material.dart';

class Textprovider with ChangeNotifier{
  String _text = "Texto Inicial";

  String get text => _text;

  void changeText(){
    _text = "Texto cambiado";
    notifyListeners();
  }

  void updateText(String newText){
    _text = newText;
    notifyListeners();
  }
}