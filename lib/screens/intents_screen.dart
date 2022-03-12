import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntentsScreen extends StatelessWidget {
  const IntentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intenciones')),
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            elevation: 5.0,
            color: Colors.green,
            child: Container(
              width: double.infinity,
              height: 150,
              child: ListTile(
                title: Text('Abrir página web'),
                subtitle: Text('www.unicuc.mx'),
                onTap: _launchWeb,
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              color: Colors.red,
              child: Container(
                width: double.infinity,
                height: 150,
                child: ListTile(
                  title: Text('Llamada telefonica'),
                  subtitle: Text('4612279093'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                height: 150,
                child: ListTile(
                  title: Text('Enviar SMS'),
                  subtitle: Text('4612279093'),
                  onTap: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _launchWeb() async {
    String url = "https://www.unicuc.mx/inicio/";
    await launch(url);
  }
}
