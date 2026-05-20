import 'package:flutter/material.dart';

//change notifier agar bisa menyimpan setiap perubahan
class CounterProvider  extends ChangeNotifier{

  int _value = 0;
  int get value => _value; //getter untuk mengambil nilai dari _value
  //set dan get
  // set --> input
  // get --> ngambil

  void increment(){
    _value++;
    notifyListeners(); //notifies listeners untuk mengisi siaran ke widget yang ada di dalam providers
  }
  void decrement(){
    _value--;
    notifyListeners();
  }
}