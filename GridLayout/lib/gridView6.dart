import 'package:flutter/material.dart';

class GridView6Screen extends StatelessWidget {
  final List<String> titles = [
    "SSM Daily Sales Report",
    "Stockiest Closing Stock",
    "Retailer Master Final",
    "Market Expiry",
    "Rate Calculation",
    "SSM Attendance",
    "Emp Login",
    "Know Your Market",
    "Know your Scheme"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView6 - Dashboard")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.network("https://i.pinimg.com/736x/34/89/22/34892276bac50e27fced1b16f440b67e.jpg",
              height: 200,
              fit: BoxFit.contain,
               ),
             ),
           Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.all(14),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 2 columns
                        crossAxisSpacing: 36,
                        mainAxisSpacing: 36,
                      ),
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(12),
                            elevation: 6,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => BlankScreen(title: titles[index]),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              titles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );


                     },

    ),
           )
  ],




    ),
    );
  }

}

/// 🔹 Blank screen that opens on click
class BlankScreen extends StatelessWidget {
  final String title;
  BlankScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          "$title Page",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
