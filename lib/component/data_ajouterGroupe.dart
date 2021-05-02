import 'package:flutter/material.dart';

class DataAjGroupe extends ChangeNotifier {
    //Data Name
    String name;
    String time;
    double p;

    String getName(){
      return name;
    }

    void setName(String newName){
      name = newName;
      notifyListeners();
    }

    String getTime(){
      return time;
    }

    void setTime(String newTime){
      time = newTime;
      notifyListeners();
    }

    double getP(){
      return p;
    }

    void setP(double newP){
      p = newP;
      notifyListeners();
    }
}