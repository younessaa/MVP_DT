import 'package:flutter/material.dart';
import '../../constants.dart';


class  Calendrier extends StatefulWidget {
  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {

  @override
  Widget build(BuildContext context) {
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Calendrier de classe"),
            actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.calendar_today,
          size: 30.0,
        ),
      )
    ),
  ],
),
            body: Center(
              child: ListView(
                children: [
                  

                ],
            ),
            
            
            ),
    )
    ,
  );
  }
}