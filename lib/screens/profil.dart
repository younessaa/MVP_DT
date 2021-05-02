import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../data.dart';



class  Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2= TextEditingController();
  init(Data data){
    _controller.text = data.getLastName();
    _controller1.text = data.getName();
    _controller2.text = data.getmail();
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
      Data data = Provider.of<Data>(context);
      init(data);
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
             backgroundColor: kPrimaryColor,
              title: Text(
                "Mon Profil",
                style : TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster',
                  )
                  ),
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
                Text('  Nom',
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
                  Text('  Prenom',
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
                  Text('  E-mail',
                  style: TextStyle(color: Colors.grey[990],
                  fontSize: 18),
                  ),
                  TextField(
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
                      data.setName(_controller1.text.toString());
                      data.setLastName(_controller.text.toString());
                      data.setMail(_controller2.text.toString());
                      
                    },
                    child: Text('Enregistrer',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black,
                      fontSize: 18
                    )
                    ),
                  ),
                ),
                
                 ElevatedButton(
                style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                onPressed: () {
                },
                child: Text("Changer Mot de passe",
                style: TextStyle(
                  fontFamily: 'Lobster',
                  color: Colors.black,
                  fontSize: 18
                )
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