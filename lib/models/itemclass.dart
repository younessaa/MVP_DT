import 'package:flutter/material.dart';

class ItemClass extends StatefulWidget {
  
  
  final String cardTitle;
  final Icon icon;
  final String goto;
  ItemClass(this.icon, this.cardTitle, this.goto);
  @override 
  _ItemClassState createState() => _ItemClassState();
}

class _ItemClassState extends State<ItemClass>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: Card(
      color: Colors.grey[200],
      child: InkWell(
        splashColor: Colors.blue.withAlpha(50),
        onTap: () => {
          Navigator.pushNamed(context, widget.goto)
        },
        child: Container(
          height: height/8,
          child: Padding( 
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                widget.icon,
                    SizedBox(width: width / 10),
                Text(widget.cardTitle,
                      style: TextStyle(color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                      ),
              ],)
          ),
        ),
      ),
    ),
  );
 }
}