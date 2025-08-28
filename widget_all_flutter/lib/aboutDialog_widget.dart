
import 'package:flutter/material.dart';

class aboutdialog extends StatelessWidget {
  const aboutdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(body:Center(
        child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),

        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App',
        applicationVersion: 'ver 1.0.0',
        aboutBoxChildren: [
          Text('this is a text created by flutter app')
        ],
      ),
        ),
    ),
    );
  }
}
