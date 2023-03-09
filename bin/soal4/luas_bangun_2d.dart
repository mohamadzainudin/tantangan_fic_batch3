abstract class Bangun2Dimensi {
  late double att1, att2;

  Bangun2Dimensi(this.att1, [this.att2 = 0]);

  getLuas();
  getKeliling();
}

class PersegiPanjang extends Bangun2Dimensi {
  double panjang;
  double lebar;
  PersegiPanjang(this.panjang, this.lebar) : super(panjang, lebar);

  @override
  getLuas() {
    return panjang * lebar;
  }

  @override
  getKeliling() {
    return 2 * (panjang + lebar);
  }
}

class Bujursangkar extends Bangun2Dimensi {
  double sisi;
  Bujursangkar(this.sisi) : super(sisi);

  @override
  getLuas() {
    return sisi * sisi;
  }

  @override
  getKeliling() {
    return 4 * sisi;
  }
}

class Lingkaran extends Bangun2Dimensi {
  double radius;
  Lingkaran(this.radius) : super(radius);
  static double phi = 3.14;

  @override
  getLuas() {
    return phi * radius * radius;
  }

  @override
  getKeliling() {
    return 2 * phi * radius;
  }
}

void main() {
  PersegiPanjang persegiPanjang = PersegiPanjang(2, 5);
  var luasPersegiPanjang = persegiPanjang.getLuas();
  var kelilingPersegiPanjang = persegiPanjang.getKeliling();
  print("Panjang : ${persegiPanjang.panjang}");
  print("Lebar : ${persegiPanjang.lebar}");
  print("Luas Persegi Panjang : ${luasPersegiPanjang}");
  print("Keliling Persegi Panjang : ${kelilingPersegiPanjang}");
  print("========================================");

  Bujursangkar bujurSangkar = Bujursangkar(10);
  var luasBujurSangkar = bujurSangkar.getLuas();
  var kelilingBujurSangkar = bujurSangkar.getKeliling();
  print("Sisi : ${bujurSangkar.sisi}");
  print("Luas Bujur Sangkar : ${luasBujurSangkar}");
  print("Keliling Bujur Sangkar : ${kelilingBujurSangkar}");
  print("========================================");

  Lingkaran lingkaran = Lingkaran(22);
  var radLingkaran = lingkaran.radius;
  print("Radius : $radLingkaran");
  var luasLingkaran = lingkaran.getLuas();
  var kelilingLingkaran = lingkaran.getKeliling();
  print("Luas Lingkaran : ${luasLingkaran}");
  print("Keliling Lingkaran : ${kelilingLingkaran}");
}
