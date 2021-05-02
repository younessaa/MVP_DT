import 'package:flutter/material.dart';
import 'package:mvp_DT/models/costumedCard.dart';
import 'mainpage.dart';

class  AjouterGroupe extends StatefulWidget {
  @override
  _AjouterGroupeState createState() => _AjouterGroupeState();
}

class _AjouterGroupeState extends State<AjouterGroupe> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name;
    //DataAjGroupe data = Provider.of<DataAjGroupe>(context);
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Cree Groupe"),
),
            body: Container(
              height: height *0.9,
              child: Center(
                child: Column(
                 //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1,),
                    Text('  Nom de groupe\n\n',
                    style: TextStyle(color: Colors.grey[990],
                    fontSize: 24,
                    fontWeight: FontWeight.normal
                    ),
                    ),
                  Container(
                    width: width * 0.8,
                    child: TextField(
                    controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ),
          ),
                  ),
                    Spacer(flex: 1,),

                  ],
              ),
              ),
            ),
            bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Mainpage.litems.add(CostumCard(_controller.text.toString(), DateTime.now().toString().substring(11, 16), 0));
            Navigator.pushNamed(context, '/mainpage');
            _controller.clear();
          },
          color: Colors.grey[800],
          textColor: Colors.white,
          child: Text('Cree Groupe'),
        ),
      ),
    )
    ,
  );
  }
}