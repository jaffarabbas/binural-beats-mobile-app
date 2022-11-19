import 'package:flutter/widgets.dart';

class ChnageBottomNavgationProvider with ChangeNotifier{
  var index = 1;
  void setIndex(int num){
    index = num;
    notifyListeners();
  }
}