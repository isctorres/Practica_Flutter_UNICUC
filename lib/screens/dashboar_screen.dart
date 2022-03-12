import 'package:flutter/material.dart';
import 'package:practica2/screens/movies_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/logocuc.png'),
              ),
              accountName: Text('ISC. Rubén Torres Frias'),
              accountEmail: Text('ruben.torres@unicuc.mx')),
          ListTile(
              title: Text('MoviesApp'),
              subtitle: Text('Test Api'),
              leading: Icon(Icons.movie),
              trailing: Icon(Icons.chevron_right),
              tileColor: Colors.black12,
              onTap: () {
                // un codigo
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MoviesScreen()));
              }),
          SizedBox(
            // division entre cada listTile
            height: 3,
          ),
          ListTile(
            title: Text('Intenciones'),
            subtitle: Text('SMS/CALL/EMAIL'),
            leading: Icon(Icons.phone_android),
            trailing: Icon(Icons.chevron_right),
            tileColor: Colors.black12,
            onTap: () {
              // un codigo
              Navigator.pop(context);
              Navigator.pushNamed(context, '/intents');
            },
          )
        ],
      )),
    );
  }
}
