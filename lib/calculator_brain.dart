import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  CalculatorBrain({this.height, this.weight});
  double _bmi;
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String get_result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String get_Interpretations() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to excersise more.';
    } else if (_bmi > 18.5) {
      return 'You are good to go.';
    } else {
      return 'Oh no! Eat More.';
    }
  }
}
