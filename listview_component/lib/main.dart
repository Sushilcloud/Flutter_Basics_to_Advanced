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

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {


    var names=['Sushil','Ravi','javed','Kailash','Sushil','Ravi','javed','Kailash','Sushil','Ravi','javed','Kailash'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
  //    body:ListView.builder(itemBuilder: (context, index) {
        body:ListView.separated(itemBuilder: (context, index) {

        return Text(names[index],style:TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
      },
      itemCount: names.length,
      separatorBuilder: (context,index) {
        //itemExtent: 100,
        //  scrollDirection: Axis.horizontal,
        return Divider(height: 50,thickness: 2,);
      }
   /*
      ListView(
        scrollDirection: Axis.vertical,//
            reverse: true, //
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
            ],
      )
*/
        )
      );


  }
}
