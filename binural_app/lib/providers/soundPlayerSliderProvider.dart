import 'package:flutter/widgets.dart';

class SoundPlayerSliderProvider with ChangeNotifier{
  RestorableDouble continuousValue = RestorableDouble(25);
  double min = 0;
  double max = 0;
  // double value = 0

  void setValue(double num){
    continuousValue.value = num;
    notifyListeners();
  }

  void setMin(double num){
    min = num;
    notifyListeners();
  }

  void setMax(double num){
    max = num;
    notifyListeners();
  }
}