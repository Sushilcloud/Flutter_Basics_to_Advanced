import 'package:flutter/material.dart';

class GridView1Screen extends StatefulWidget {
  @override
  _GridView1ScreenState createState() => _GridView1ScreenState();
}

class _GridView1ScreenState extends State<GridView1Screen> {
  // Track clicked items
  List<bool> isSelected = List.generate(6, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView with StatefulWidget")),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected[index] ? Colors.green : Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Item $index",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }),
      ),
    );
  }
}
