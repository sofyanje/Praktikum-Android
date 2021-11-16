import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'GEMUK';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'KURUS';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return "Anda Memiliki berat badang yang lebih tinggi dari biasanya. Cobalah berolahraga lebih banyak.";
    } else if (_bmi > 18.5) {
      return "Anda memiliki berat badan normal. Kerja yang baik";
    } else {
      return "Anda memmiliki berat badan lebih rendah dari normal. Anda bisa makan sedikit lebih banyak";
    }
  }
}
