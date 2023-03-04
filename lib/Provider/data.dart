import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class DataProvider with ChangeNotifier{

  int _Weight = 50;
  int _Age = 20;
  bool _Gender = true;
  int _Hight = 159;

  static const _kminSliderHight = 120.0;
  static const _kmaxSliderHight = 200.0;

  get Hight => _Hight;
  get Weight => _Weight;
  get Age => _Age;
  get Gender => _Gender;
  get kminSliderHight => _kminSliderHight;
  get kmaxSliderHight => _kmaxSliderHight;


  void setHight(int value){
    _Hight = value;
    notifyListeners();
  }

  void setGender(bool value){
    _Gender = value;
    notifyListeners();
  }

  void setWeight(int value){
    _Weight = value;
    notifyListeners();
  }

  void setAge(int value){
    _Age = value;
    notifyListeners();
  }


  double calculateBMI(){
    return (_Weight /pow((_Hight/100), 2));
  }

  String Intro(){
    double bmi = calculateBMI();
    if(bmi < 18.5){
      return "Underweight";
    } else if (bmi >= 18.5 && bmi <= 25){
      return "Normal range!";
    } else if (bmi >= 25 && bmi <= 30){
      return "Overweight.";
    } else if (bmi >= 30 && bmi <= 35){
      return "Class 1 obesity.";
    } else if (bmi >= 35 && bmi <= 40){
      return "Class 2 obesity.";
    }else {
      return "Class 3 obesity.";
    }
  }


  String getMessage(){
    double bmi = calculateBMI();
    if(bmi < 18.5){
      return "You are underweight. It is recommended to consult with a doctor or nutritionist.";
    } else if (bmi >= 18.5 && bmi <= 25){
      return "You have a normal BMI. Keep up the good work!";
    } else if (bmi >= 25 && bmi <= 30){
      return "Your BMI indicates you are overweight. It is recommended to make lifestyle changes";
    } else if (bmi >= 30 && bmi <= 35){
      return "You have class 1 obesity. It is recommended to seek medical advice and start a weight-loss program.";
    } else if (bmi >= 35 && bmi <= 40){
      return "You have class 2 obesity. It is recommended to seek medical advice and start a weight-loss program immediately.";
    }else {
      return "You have class 3 obesity. It is recommended to seek medical advice and start a weight-loss program urgently.";
    }
  }

}