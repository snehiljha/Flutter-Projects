import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }
}
