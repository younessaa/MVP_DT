import 'package:flutter/material.dart';
import 'package:mvp_DT/component/textFiald.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../data.dart';



class  Signup0 extends StatefulWidget {
  @override
  _Signup0State createState() => _Signup0State();
}

class _Signup0State extends State<Signup0> {
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
                  "S'inscrire",
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
        height: height *0.9,
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
                TextFields(
                  hint: null,
                  onchange: (value) {
                          data.setLastName(value);
                        },
                  ),
                  SizedBox(height: 8)
                  ,
                  Text('  Prenom',
                  style: TextStyle(color: Colors.grey[990],
                  fontSize: 18),
                  ),
                  TextFields(
                    hint: null,
                  onchange: (value) {
                          data.setName(value);
                        },
                  )
                  ,
                  SizedBox(height: 8)
                  ,
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
                  SizedBox(height: 8),
                  Text('  Vérifier mot de passe',
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
                    child: Text('Créer votre compte',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black,
                      fontSize: 18
                    )
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text('  Vous avez déjà un compte ?  ',
                      style: TextStyle(color: Colors.grey[990],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),
                     ElevatedButton(
                    style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                      Navigator.pop(context);
                    },
                    child: Text("S'identifier",
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black,
                      fontSize: 18
                    )
                    ),
                  ) 
                  ],
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