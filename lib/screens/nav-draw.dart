import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    Data data = Provider.of<Data>(context);
    return Drawer(
      child: Container(
        height: height * 0.9,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Text(
                    data.getFullName() != null ? data.getFullName():"  ", 
                    style: TextStyle(color: Colors.blueGrey[900], fontSize: 25),
                  ),
                  ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  
                ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Mon Profil',),
              onTap: () => {
                Navigator.pushNamed(context, '/profil')
                },
            ),
            ListTile(
              leading: Icon(Icons.eco_sharp),
              title: Text('Mon espace'),
              onTap: () => {
                Navigator.pushNamed(context, '/monespace')
                },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Mes Groupes'),
              onTap: () => {Navigator.pushNamed(context, '/mainpage')},
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text('Ma class'),
              onTap: () => {
                Navigator.pushNamed(context, '/myclass')
                },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Deconnexion'),
              onTap: () => {
                Navigator.pushReplacementNamed(context, '/signin')
                },
            ),
          ],
        ),
      ),
    );
  }
}