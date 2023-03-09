// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';
import 'dart:math';

class Titik {
  double x;
  double y;
  static double pi = 3.1415926535897932;
  static double r = 6371;

  Titik({this.x = 0, this.y = 0});

  List<double> setLocation({x = 0.0, y = 0.0}) {
    this.x = x;
    this.y = y;
    List<double> location = [x, y];
    return location;
  }

  double deg2Rad(dynamic d) {
    return (d * pi / 180.0);
  }

  double rad2Deg(dynamic r) {
    return r * deg2Rad(r);
  }

  double getDistanceBetween(
      {required double x1,
      required double x2,
      required double y1,
      required double y2}) {
    x1 = deg2Rad(x1);
    x2 = deg2Rad(x2);
    y1 = deg2Rad(y1);
    y2 = deg2Rad(y2);

    double thetaX = x2 - x1;
    double thetaY = y2 - y1;
    double distance =
        pow(sin(thetaX / 2), 2) + cos(x1) + cos(x2) * pow(sin(thetaY / 2), 2);
    distance = 2 * atan2(sqrt(distance), sqrt(1 - distance));
    distance = r * distance;
    return distance.roundToDouble();
  }

  @override
  String toString() => '$x, $y';
}

void main() {
  Titik titik = Titik();
  print("Koordinat Awal : ${titik}");
  print("---------");
  titik.setLocation(x: -6.123);
  print("Koordinat X : ${titik.x}");
  print("---------");
  titik.setLocation(y: 12.12312);
  print("Koordinat y : ${titik.y}");
  print("---------");
  titik.setLocation(x: -6.17517905944669, y: 106.82710988364096);
  double x1 = titik.x;
  double y1 = titik.y;
  print("Koordinat Awal : ${titik}");
  print("---------");
  titik.setLocation(x: -6.185213492997294, y: 106.63275008080414);
  double x2 = titik.x;
  double y2 = titik.y;
  print("Koordinat Sekarang : ${titik}");
  print("---------");
  double distance = titik.getDistanceBetween(x1: x1, x2: x2, y1: y1, y2: y2);
  print("Jarak : ${distance} km");
}
