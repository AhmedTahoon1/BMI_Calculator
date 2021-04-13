import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 120.0;
  bool isMale = true;
  Color g300 = Colors.grey[300];
  int weight = 50, age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.ac_unit,
                              size: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.blue : g300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.ac_unit,
                              size: 50,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: !isMale ? Colors.blue : g300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 70.0,
                      onChanged: (value) {
                        setState(() {
                          height = value; //عشان يكون رقم صحيح
                        });
                      },
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: g300, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(fontSize: 30),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        // ignore: unnecessary_statements
                                        weight > 30 ? weight-- : weight;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    heroTag: 'Weigth-',
                                    mini: true,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        // ignore: unnecessary_statements
                                        weight <= 160 ? weight++ : weight;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    heroTag: 'Weight+',
                                    mini: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: g300,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '$age',
                                style: TextStyle(fontSize: 30),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        // ignore: unnecessary_statements
                                        age > 10 ? age-- : age;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    heroTag: 'age-',
                                    mini: true,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        // ignore: unnecessary_statements
                                        age <= 120 ? age++ : age;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    heroTag: 'age+',
                                    mini: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: g300,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ))),
          MaterialButton(
            onPressed: () {
              var result=weight/pow(height/100, 2);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BmiResultScreen(isMale: isMale,result: result.round(),age: age,)));
            },
            child: Text(
              'Calculate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.blue,
            height: 60,
            minWidth: double.infinity,
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
