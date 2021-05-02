import 'package:flutter/material.dart';
import 'package:mvp_DT/component/textFiald.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../data.dart';


class  Singin extends StatefulWidget {
  @override
  _SinginState createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
      Data data = Provider.of<Data>(context);
      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: kPrimaryColor,
              title: Center(
                child: Text(
                  "S'identifier",
                  style : TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster',
                    )
                    ),
              ),
            ),
            body: Form(
      key: _formKey,
      child: Container(
        height: height * 0.9,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: ListView(  
                children: <Widget>[
                    Text('  E-mail',
                    style: TextStyle(color: Colors.grey[990],
                    fontSize: 18),
                    ),
                    TextFields(
                    hint: null,
                    onchange: (value) {
                            data.setMail(value);
                          },
                    )
                    ,
                    SizedBox(height: 8)
                    ,
                    Text('  Mot de passe',
                    style: TextStyle(color: Colors.grey[990],
                    fontSize: 18),
                    ),
                    TextFields(
                    hint: "pass",
                    onchange: (value) {
                            data.setPasword(value);
                          },
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[200]),
                        ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/mainpage');
                        //Navigator.pushNamed(context, '/mainpage');
                      },
                      child: Text('Se connencter',
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
      ),
    )
  
    ,
  );
  }
}
