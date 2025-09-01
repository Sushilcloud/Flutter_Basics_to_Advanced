import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
                            backgroundColor: Colors.greenAccent[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
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
    Widget formWidget;
    // Choose form based on button title
    if (title == "SSM Daily Sales Report") {
      formWidget = ssmReportForm();
    } else if (title == "Stockiest Closing Stock") {
      formWidget = DistributorForm();
    } else if (title == "Stock Report") {
      formWidget = StockReportForm();
    } else {
      formWidget = Center(child: Text("No form linked yet"));
    }

    return Scaffold(

      appBar: AppBar(title: Text(title)),

      body:formWidget,

    );
  }
}
class ssmReportForm extends StatefulWidget {
  @override
  _ssmReportFormState createState() => _ssmReportFormState();
}

class _ssmReportFormState extends State<ssmReportForm> {
  final _formKey = GlobalKey<FormState>();

  // Map to hold all form fields and their controllers
  final Map<String, TextEditingController> controllers = {
    "ssmName": TextEditingController(),
    "townName": TextEditingController(),
    "beatName": TextEditingController(),
    "totalOrder": TextEditingController(),
    "totalLines": TextEditingController(),
    "realLtr": TextEditingController(),
    "real180ml": TextEditingController(),
    "activeLtr": TextEditingController(),
    "coconutwaterPet": TextEditingController(),
    "coconutwaterTetra": TextEditingController(),
    "real125ml": TextEditingController(),
    "koolerz250mlPet": TextEditingController(),
    "koolerz600mlPet": TextEditingController(),
    "koolerz1200mlPet": TextEditingController(),
    "koolerz2LtrPet": TextEditingController(),
    "koolerz150mlPet": TextEditingController(),
    "realPet200ml": TextEditingController(),
    "realPet500ml": TextEditingController(),
    "milkshake": TextEditingController(),
    "ggrs5": TextEditingController(),
    "gingergarlic100gm": TextEditingController(),
    "gingergarlic200gm": TextEditingController(),
    "tomotopuree": TextEditingController(),
    "coconutmilk": TextEditingController(),
    "chutney": TextEditingController(),
    "hajmolajeera": TextEditingController(),
    "fizz": TextEditingController(),
    "cowGhee": TextEditingController(),
    "remark": TextEditingController(),
  };

  @override
  void dispose() {
    // Dispose all controllers to prevent memory leaks
    controllers.forEach((key, controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            ...controllers.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  controller: entry.value,
                  decoration: InputDecoration(labelText: entry.key),
                  validator: (value) =>
                  value!.isEmpty ? "Please enter ${entry.key}" : null,
                ),
              );
            }).toList(),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // Convert all controllers to a Map<String, String>
                  final formData = controllers.map((key, controller) =>
                      MapEntry(key, controller.text));

                  // Send to Google Sheets
                  final url = Uri.parse("https://script.google.com/macros/s/AKfycby9ReL-WkJwumRQK9NttN2dso9WQUBFCOEVY6qz-Suv17FoyBWVAfJpTkBehuRH3MhI5w/exec");
                  try {
                    final response = await http.post(
                      url,
                      headers: {"Content-Type": "application/json"},
                      body: jsonEncode(formData),
                    );

                    if (response.statusCode == 200) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Form Submitted Successfully!")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Submission Failed!")),
                      );
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("SubmitError: $e")),
                    );
                  }
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}



class DistributorForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Distributor form goes here"));
  }
}

class StockReportForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Stock Report form goes here"));
  }
}