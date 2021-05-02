import 'package:flutter/material.dart';
import '../../constants.dart';



class  ContacterProfs extends StatefulWidget {
  @override
  _ContacterProfsState createState() => _ContacterProfsState();
}

class _ContacterProfsState extends State<ContacterProfs> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2= TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
      return SafeArea(
          child: Scaffold(
            appBar:  AppBar(
              backgroundColor: kPrimaryColor,
              title: Text("Contacter Professeurs"),
            actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.contact_phone,
          size: 30.0,
        ),
      )
    ),
  ],
),
            body: Form(
      key: _formKey,
      child: Container(
        height: height * 0.9,
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView(  
              children: <Widget>[
                SizedBox(height: 12),
                Text('  Envoyer a (Email)',
                  style: TextStyle(color: Colors.grey[990],
                  fontSize: 18
                  ),
                  ),
                TextField(
                  controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ),
          ),
                  SizedBox(height: 8)
                  ,
                  Text('  Objet',
                  style: TextStyle(color: Colors.grey[990],
                  fontSize: 18),
                  ),
                  TextField(
                  controller: _controller1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ),
          ),
                  
                  SizedBox(height: 8)
                  ,
                  Text('  Message',
                  style: TextStyle(color: Colors.grey[990],
                  fontSize: 18),
                  ),
                  TextField(
                    maxLines: 7,
                  controller: _controller2,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(),
              
            ),
          ),
                  SizedBox(height: 8)
                  ,
                  
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[200]),
                      ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Envoyer',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black,
                      fontSize: 18
                    )
                    ),
                  ),
                ),
              ],
            ),
        ),
        ),
      ),
    )
  
    ,
  );
  }
}