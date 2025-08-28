import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
          height: 200,
        child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,//
        children: [   // widget Type of array is Text only if not mentioned then can place any thime of widget
          Text('A',style: TextStyle(fontSize: 20),),
          Text('B',style: TextStyle(fontSize: 20),),
          Text('C',style: TextStyle(fontSize: 20),),
          Text('D',style: TextStyle(fontSize: 20),),
          Text('E',style: TextStyle(fontSize: 20),),
          Text('F',style: TextStyle(fontSize: 20),),
          Text('F',style: TextStyle(fontSize: 20),),
        ],
      )
      )
    );
  }
}
