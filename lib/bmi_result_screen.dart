import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;

  BmiResultScreen(
      {@required this.isMale, @required this.result, @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Gender :${isMale ? 'Male' : 'Female'}',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Result :${result.round()}',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Age :$age',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.6), borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
