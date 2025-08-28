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
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      Center(
        child: Container(
          width: 200,
          height: 600,
          color: Colors.blue,
          child:Column(mainAxisAlignment: MainAxisAlignment.center, //to center content vertically
            crossAxisAlignment: CrossAxisAlignment.center ,// to center content horizontally
            children:[

                Text("This is centre of container",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                ,backgroundColor: Colors.deepOrangeAccent),textAlign: TextAlign.center,
                ),

                SizedBox(height: 40),
                ElevatedButton(onPressed: (){
                  print("Button Pressed");
                }, child:Text("Click Me"), ),

          SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            print("Button Pressed");
          }, child:Text("Click Me"),),

              SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            print("Button Pressed");
          }, child:Text("Click Me"),),

          Image(image: AssetImage("assets/images/78347237.jpg"),width: 100,height: 100,),

          ]

        ),
        ),
        ),

    );
  }
}
