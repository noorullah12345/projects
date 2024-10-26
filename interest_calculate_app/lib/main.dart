import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Interest Calculation ',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => InterestPage();
}

class InterestPage extends State<HomePage> {
  TextEditingController principalController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  String result = '';
  void CalculateInterest() {
    double principal = double.tryParse(principalController.text) ?? 0.0;
    double rate_of_interest = double.tryParse(rateController.text) ?? 0.0;
    double time_of_year = double.tryParse(timeController.text) ?? 0.0;
    double interst = principal * rate_of_interest * time_of_year / 100;
    setState(() {
      result = 'Simple Interest: \$${interst.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interest Calculation'),
      ),
      body: Column(
        children: [
          TextField(
            controller: principalController,
            decoration: InputDecoration(
              label: Text('principal'),
            ),
          ),
          TextField(
            controller: rateController,
            decoration: InputDecoration(
              label: Text('Rate of interest'),
            ),
          ),
          TextField(
            controller: timeController,
            decoration: InputDecoration(label: Text('Time in year')),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                CalculateInterest();
              },
              child: Text('Calculate')),
          SizedBox(
            height: 10,
          ),
          Text(
            result,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}
