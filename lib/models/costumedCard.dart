import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CostumCard extends StatefulWidget {
  
  
  final String cardTitle;
  final String cardtime;
  final double p;
  CostumCard(this.cardTitle, this.cardtime, this.p);
  @override 
  _CostumCardState createState() => _CostumCardState();
}

class _CostumCardState extends State<CostumCard>{
@override
Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Center(
    child: Card(
      color: Colors.grey[200],
      child: InkWell(
        splashColor: Colors.blue.withAlpha(50),
        onTap: () {},
        child: Container(
          height: height * 0.2,
          child: Padding( 
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Text(widget.cardtime,
                      style: TextStyle(color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                      )
                  ],
                ),
                Row(
                  //: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.group,
                      size: width/8  //.more_vert
                    ),
                    SizedBox(width: width / 9),
                    Text(widget.cardTitle,
                      style: TextStyle(color: Colors.black,
                      fontSize: height/35,
                      fontWeight: FontWeight.bold),
                      ),
                      
                  ],
                ),
                SizedBox(height: height / 50),
                new LinearPercentIndicator(
                    width: width * 4 / 5,
                    lineHeight: 15.0,
                    percent: widget.p,
                    progressColor: Colors.blue,
                  ),
                  SizedBox(height: height / 80),
                  
                  Row(
                    children: [
                      Text("   " + (widget.p * 100).toString() + "%",
                          style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                          ),
                          
                        Text("     Terminé",
                          style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                          ),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    ),
  );
 }
}