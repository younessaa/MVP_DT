import 'package:flutter/material.dart';
import 'package:mvp_DT/models/itemclass.dart';

import '../../constants.dart';
import '../nav-draw.dart';


class  MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              shadowColor: Colors.lightBlue[300],
              title: Text("My Class"),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          size: 26.0,
        ),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.notifications,
          size: 26.0,
        ),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
            Icons.person    //.more_vert
        ),
      )
    ),
  ],
),
            body: Container(
              height: height * 0.9,
              child: Center(
                child: ListView(
                children: [
                  ItemClass(Icon(Icons.message, size: width/8 )
                      , "Discussion", '/discussion'),
                  ItemClass(Icon(Icons.file_copy, size: width/8 )
                      , "Documents Partagés", '/documents'),

                  ItemClass(Icon(Icons.call_end, size: width/8 )
                      , "Salon vocal", '/salon'),
                  
                  ItemClass(Icon(Icons.calendar_today, size: width/8 )
                      , "Clendrier de classe", '/calendrier'),
                    ItemClass(Icon(Icons.contact_phone, size: width/8 )
                      , "Contacter Professeurs", '/contacterprofs'),
                  
                ],
              ),
              
              ),
            )
    )
    ,
  );
  }
}