import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String hint;
  String val;
  final Color color = Colors.black;
  final IconData icon;
  final Function validator;
  final Function onchange;

  TextFields({this.hint, this.icon, this.validator, this.onchange, this.val});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hint == "pass" ? true : false,
      cursorColor: Colors.green[300],
      decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 0.7,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 0.8,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Colors.green[500]
                  ),
                ),
               
      //labelText: hint,
      labelStyle: TextStyle(color: Colors.blueGrey)    
      ),
      validator: validator,
      onChanged: onchange,
    );
    
  }
}