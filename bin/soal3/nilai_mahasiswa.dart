class Nilai {
  double _quiz = 0;
  double _uts = 0;
  double _uas = 0;

  double setQuis(double x) {
    return _quiz = x;
  }

  double setUTS(double x) {
    return _uts = x;
  }

  double setUAS(double x) {
    return _uas = x;
  }

  double getNA() {
    // double na = (_quiz * 0.2) + (_uts * 0.3) + (_uas * 0.5);
    double na = (0.2 * _quiz) + (0.3 * _uts) + (0.5 * _uas);
    return na;
  }

  String getIndex() {
    late String index;
    if (getNA() > 80 && getNA() <= 100) {
      return index = 'A';
    } else if (getNA() >= 68 && getNA() < 80) {
      return index = 'B';
    } else if (getNA() >= 56 && getNA() < 68) {
      return index = 'C';
    } else if (getNA() >= 45 && getNA() < 56) {
      return index = 'D';
    } else if (getNA() >= 0 && getNA() < 45) {
      return index = 'E';
    } else {
      return index = 'Gagal mendapatkan index';
    }
  }

  String getKeterangan() {
    late String keterangan;
    if (getIndex() == 'A') {
      return keterangan = 'Sangat Baik';
    } else if (getIndex() == 'B') {
      return keterangan = 'Baik';
    } else if (getIndex() == 'C') {
      return keterangan = 'Cukup';
    } else if (getIndex() == 'D') {
      return keterangan = 'Kurang';
    } else if (getIndex() == 'E') {
      return keterangan = 'Sangat Kurang';
    } else {
      return keterangan = 'Gagal mendapatkan keterangan';
    }
  }
}

void main() {
  Nilai mhsSatu = Nilai();
  print("Nilai Quis : ${mhsSatu.setQuis(80)}");
  print("Nilai UTS : ${mhsSatu.setUTS(76)}");
  print("Nilai UAS : ${mhsSatu.setUAS(80)}");

  print("Nilai Akhir : ${mhsSatu.getNA()}");
  print("Index Nilai : ${mhsSatu.getIndex()}");
  print("Keterangan : ${mhsSatu.getKeterangan()}");
}
