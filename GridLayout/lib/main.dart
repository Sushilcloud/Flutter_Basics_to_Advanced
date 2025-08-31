import 'package:flutter/material.dart';
import 'gridView1.dart';
import 'gridView2.dart';
import 'gridView3.dart';
import 'gridView4.dart';
import 'gridView5.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen with 6 Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Open GridView1"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => GridView1Screen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Open GridView2"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => GridView2Screen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Open GridView3"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => GridView3Screen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Open GridView4"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => GridView4Screen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Open GridView5"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => GridView5Screen()),
                );
              },
            ),




          ],
        ),
      ),
    );
  }
}
