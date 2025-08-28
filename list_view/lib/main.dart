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
   @override
  Widget build(BuildContext context) {

     var arrnames=['ravi','rakesh','raju','ramesh','rake','ravi','rakesh','raju','ramesh','rake','ravi','rakesh','raju','ramesh','rake','ravi','rakesh','raju','ramesh','rake','ravi','rakesh','raju','ramesh','rake'];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:

      ListView.separated(itemBuilder: (context, index) {
        return Text(arrnames[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),);
      },
        itemCount: arrnames.length,
        separatorBuilder: (context, index) {
          return Divider(height:20,thickness:2,color: Colors.blue,);
        },

      )

        // ListView with builder for dynamic data
      /*
       ListView.builder(itemBuilder: (context, index) {
         return Text(arrnames[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),);
       },
       itemCount: arrnames.length,
         itemExtent: 100,
         scrollDirection: Axis.horizontal,
       )
    */


      //  simple listview example
   /*   Center(
        child: ListView(
          // scrollDirection: Axis.horizontal, "list as horizongal"
          // reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            )

          ],
        ),
      )
*/
    );
  }
}
