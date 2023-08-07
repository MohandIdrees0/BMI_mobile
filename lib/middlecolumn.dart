import 'package:flutter/material.dart';
import 'BMICALCULATOR.dart';
import 'style.dart';
class middlecolumn extends StatelessWidget {
  const middlecolumn({required this.weight,required this.height});
  final height;
  final weight;
  @override
  Widget build(BuildContext context) {
    calculator X=calculator(height,weight);
    return Container(
      color: Color(0xff1D1F33),
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(X.getResult(),style: textStyle.copyWith(color: Color(0xff22E67B))),
          Text(X.BMI().toStringAsFixed(1),style: numberStyle,),
          Text('Normal BMI Range:',style: textStyle,),
          Text('18.5-25kg/m^2',style: numberStyle),
          Text(X.getInterpretation(),style: textStyle),
        ],
      ),
    );
  }
}
