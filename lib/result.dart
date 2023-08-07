import 'package:bmi/Result.dart';
import 'package:bmi/middlecolumn.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class resultPage extends StatelessWidget {
  const resultPage({required this.weight, required this.height});
  final height;
  final weight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "BMI CALCULATOR",
          textAlign: TextAlign.center,
          style: titleStyle,
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
            'Your Reslut',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            textAlign: TextAlign.start,
          ),
              )),
          Expanded(
              flex: 6, child: middlecolumn(weight: weight , height: height )),
          Expanded(
              child: Container(
            width: double.infinity,
            color: Color(0xffEB1555),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "ReCalculate",
                style: titleStyle,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
