import 'package:flutter/material.dart';

class GridView2Screen extends StatefulWidget {
  @override
  _GridView2ScreenState createState() => _GridView2ScreenState();
}

class _GridView2ScreenState extends State<GridView2Screen> {
  // Track clicked items
  List<bool> isSelected = List.generate(6, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),
      body: SafeArea(child: Container(
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )
            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )

            ,
            Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit:BoxFit.cover,),
            )

          ],),

      )),
    );
  }
}
