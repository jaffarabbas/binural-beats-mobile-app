import 'package:flutter/widgets.dart';

class ChangeBottomNavgationProvider with ChangeNotifier{
  var index = 1;
  void setIndex(int num){
    index = num;
    notifyListeners();
  }
}