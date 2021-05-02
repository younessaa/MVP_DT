import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../data.dart';



class  Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {

  @override
  Widget build(BuildContext context) {
    Data data = Provider.of<Data>(context);
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Documents Partages"),
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
          Icons.file_copy,
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