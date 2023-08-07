import 'dart:math';
import 'dart:math';
class calculator{
  double _height=0;
  int _weight=0;
  double _bmi=0;
  calculator(double height,int weight){
    print(1);
    this._height=height;
    this._weight=weight;
    this._bmi=_weight/((_height/100)*(_height/100));
  }
  double BMI(){
    return _bmi;
  }
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

//   _bmi = weight / pow(height / 100, 2);