import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'screens/groupe/ajouterGroupe.dart';
import 'screens/groupe/mainpage.dart';
import 'screens/monespace/monespace.dart';
import 'screens/myclass/calendrier.dart';
import 'screens/myclass/class.dart';
import 'screens/myclass/contacterprofs.dart';
import 'screens/myclass/discusion.dart';
import 'screens/myclass/documents.dart';
import 'screens/profil.dart';
import 'screens/salonvocal/salon.dart';
import 'screens/signup-in/Signup0.dart';
import 'screens/signup-in/Signup1.dart';
import 'screens/signup-in/Singin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute:'/',
    routes: {
        '/' : (context) => Signup1(),
        '/signup' : (context) => Signup0(),
        '/singin' : (context) => Singin(),
        '/mainpage' : (context) => Mainpage(),
        '/myclass' : (context) => MyClass(), 
        '/salon' : (context) => SalonVocale(), 
        '/ajoutergroupe' : (context) => AjouterGroupe(), 
        '/calendrier' : (context) => Calendrier(),
        '/contacterprofs' : (context) => ContacterProfs(),
        '/discussion' : (context) => Discussion(), 
        '/documents' : (context) => Documents(), 
        '/monespace' : (context) => MonEspace(),
        '/profil' : (context) => Profil(),
        '/signin' : (context) => Singin(),
      } 
    )
    );
  }
}
