import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
    //Data Name
    String name;

    String getName(){
      return name;
    }

    void setName(String newName){
      name = newName;
      notifyListeners();
    }

    //Data lastName
    String lastName;

    String getLastName(){
      return lastName;
    }

    void setLastName(String newLastName){
      lastName = newLastName;
      notifyListeners();
    }

    //Data FullName

    String getFullName(){
      if((lastName != null) && (name != null))
        return lastName +" "+ name;
      return "   ";
    }


    //Data Mail
    String mail;

    String getmail(){
      return mail;
    }

    void setMail(String newmail){
      mail = newmail;
      notifyListeners();
    }

    //Data Password
    String password;

    String getPasword(){
      return password;
    }

    void setPasword(String newPassword){
      password = newPassword;
      notifyListeners();
    }
}