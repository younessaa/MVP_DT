import 'package:flutter/material.dart';
import 'package:mvp_DT/models/costumedCard.dart';

import '../nav-draw.dart';



class  Mainpage extends StatefulWidget {
  static List<CostumCard> litems = [];
  ajouter(CostumCard costumCard){
    Mainpage.litems.add(costumCard);
  }
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    //ListCus data = Provider.of<ListCus>(context);
      return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: AppBar(
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
            body: Center(
              child: new ListView.builder
              (
                itemCount: Mainpage.litems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Mainpage.litems[index];
                }
            )
        )
            ,
            bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/ajoutergroupe');
          },
          color: Colors.grey[800],
          textColor: Colors.white,
          child: Text("Ajouter Groupe",
                          style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                          ),
    )
    )
    )
    ,
  );
  }
}