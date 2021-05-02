import 'package:flutter/material.dart';
import 'package:mvp_DT/models/personvocal.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../data.dart';



class  SalonVocale extends StatefulWidget {
  @override
  _SalonVocaleState createState() => _SalonVocaleState();
}

class _SalonVocaleState extends State<SalonVocale> {
  bool mic = false;

  void _onItemTapped(){
    setState(() {
          mic = !mic;
        });  
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    Data data = Provider.of<Data>(context);
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Salon Vocale"),
            actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.call,
          size: 30.0,
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
                    PersonVocal(data.getFullName(), mic)
                  ],
              ),
              ),
            ),
            bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RaisedButton(
              
                onPressed: () {
                  Navigator.pushNamed(context, '/myclass');
                },
                color: Colors.grey[400],
                textColor: Colors.white,
                child: Icon(Icons.call_end,
                color: Colors.red,),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  _onItemTapped();
                },
                color: Colors.grey[400],
                textColor: Colors.white,
                child: Icon(mic == true ? Icons.mic: Icons.mic_off,
                color: Colors.black,),
              ),
            ),
          ],
        ),
      ),
    )
    ,
  );
  }
}