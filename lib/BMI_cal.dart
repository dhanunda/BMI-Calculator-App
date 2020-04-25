import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OverWeight';
    else if (_bmi >= 18.5)
      return 'NORMAL';
    else
      return 'UnderWeight';
  }

  String interpretation() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight, try to excersice more';
    else if (_bmi >= 18.5)
      return 'You have normal body weight GoodJob!:)';
    else
      return 'You are lower than a normal body weight you can eat bit more';
  }
}
