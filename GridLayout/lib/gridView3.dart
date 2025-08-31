import 'package:flutter/material.dart';

class GridView3Screen extends StatefulWidget {
  @override
  _GridView3ScreenState createState() => _GridView3ScreenState();
}

class _GridView3ScreenState extends State<GridView3Screen> {
  // Track clicked items
  List<bool> isSelected = List.generate(12, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView3 Example")),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,        // 3 columns
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: isSelected.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                color: isSelected[index] ? Colors.orange : Colors.blue,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  "Tile $index",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
