import 'package:flutter/material.dart';

import '../../constants.dart';


class  Signup1 extends StatefulWidget {
  @override
  _Signup1State createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
       double height = MediaQuery.of(context).size.height;
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
            body: Container(
              height: height*0.9,
              child: Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: ListView(  
              children: <Widget>[
                Text('  S’inscrire en tant que :  ',
                      style: TextStyle(color: Colors.grey[990],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),
                NewButton("Etudiant", "/signup"),
                Spacer(flex: 1,),
                NewButton("Délégué", "/signup"),
                Spacer(flex: 1,),
                NewButton("Professeur", "/signup"),
                Row(
                  children: [
                    Text(' Vous avez déjà un compte ?  ',
                      style: TextStyle(color: Colors.grey[990],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),
                     ElevatedButton(
                    style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/singin');
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
            ),
    )
  
    ,
  );
  }
}

class NewButton extends StatelessWidget {
  final String str;
  final String path;
  const NewButton(this.str, this.path,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Container(
      
      margin:  EdgeInsets.all(20),
      child: ElevatedButton(
        style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[200]),
          ),
        onPressed: () {
          Navigator.pushNamed(context, '/signup');
          
        },
        child: Text(str,
        style: TextStyle(
          fontFamily: 'Lobster',
          color: Colors.black,
          fontSize: 18
        )
        ),
      ),
    );
  }
}