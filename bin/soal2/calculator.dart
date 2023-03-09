class Calculator {
  double operan1 = 0;
  double operan2 = 0;

  double? isiOperan1(double x) {
    operan1 = x;
  }

  double? isiOperan2(double x) {
    operan2 = x;
  }

  double tambah() {
    double hasil = operan1 + operan2;
    return hasil;
  }

  double kurang() {
    return operan1 - operan2;
  }

  double kali() {
    return operan1 * operan2;
  }

  double bagi() {
    return operan1 / operan2;
  }

  double pangkat(double x) {
    return x *= x;
  }

  @override
  String toString() => 'Calculator(operan1: $operan1, operan2: $operan2)';
}

void main() {
  Calculator cal = Calculator();
  cal.isiOperan1(5);
  cal.isiOperan2(2);
  print("Nilai Operan1 : ${cal.operan1}");
  print("Nilai Operan2 : ${cal.operan2}");

  print("Penjumlahan : ${cal.tambah()}");
  print("Pengurangan : ${cal.kurang()}");
  print("Perkalian : ${cal.kali()}");
  print("Pembagian : ${cal.bagi()}");
  print("Pangkat Operan1 : ${cal.pangkat(cal.operan1)}");
  print("Pangkat Operan2 : ${cal.pangkat(cal.operan2)}");
}
