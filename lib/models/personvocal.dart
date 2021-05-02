import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonVocal extends StatefulWidget {
  
  
  final String name;
  bool mic; 

  changeMic() {
    
  }

  PersonVocal(this.name, this.mic);
  @override 
  _PersonVocalState createState() => _PersonVocalState();
}

class _PersonVocalState extends State<PersonVocal>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: Container(
      height: height/12,
      child: Padding( 
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Icon(Icons.person, size: 20 ),
                SizedBox(width: width / 10),
            Text(widget.name,
                  style: TextStyle(color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
            Icon(widget.mic == true ? 
              Icons.mic_rounded : Icons.mic_off_rounded,
              size: 35,
              )
          ],)
      ),
    ),
  );
 }

  
}