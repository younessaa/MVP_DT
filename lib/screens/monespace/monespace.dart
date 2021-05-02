import 'package:flutter/material.dart';
import 'package:mvp_DT/models/itemclass.dart';
import 'package:mvp_DT/screens/nav-draw.dart';

import '../../constants.dart';


class  MonEspace extends StatefulWidget {
  @override
  _MonEspaceState createState() => _MonEspaceState();
}

class _MonEspaceState extends State<MonEspace> {
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Mon Espace"),
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
              height: height*0.9,
              child: Center(
                child: ListView(
                children: [
                  ItemClass(Icon(Icons.file_copy, size: width/8 )
                      , "Mes Documents", '/mesdocuments'),
                  ItemClass(Icon(Icons.view_module, size: width/8 )
                      , "Mes Modules", '/mesmodules'),

                  ItemClass(Icon(Icons.note, size: width/8 )
                      , "Mes Notes", '/mes notes'),
                  
                  ItemClass(Icon(Icons.calendar_view_day, size: width/8 )
                      , "Mon Planing", '/monplaning'),
                  
                ],
              ),
              
              ),
            )
    )
    ,
  );
  }
}