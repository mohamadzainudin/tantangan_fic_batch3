abstract class Kue {
  String nama;
  double harga;

  Kue(this.nama, this.harga);

  hitungHarga();
  toString() {
    return "nama kue : ${nama}, harga : ${harga}";
  }
}

class KuePesanan extends Kue {
  late String nama;
  late String jenis = 'Kue Pesanan';
  late double berat;
  late double harga;
  KuePesanan(this.nama, this.harga, this.berat) : super(nama, harga);

  @override
  double hitungHarga() {
    return berat * harga;
  }
}

class KueJadi extends Kue {
  late String nama;
  late String jenis = 'Kue Jadi';
  late double jumlah;
  late double harga;
  KueJadi(this.nama, this.harga, this.jumlah) : super(nama, harga);

  @override
  double hitungHarga() {
    return harga * jumlah * 2;
  }
}

void main() {
  KuePesanan boluKukus = KuePesanan('Bolu Kuus', 2500, 500);
  KueJadi boluPanggang = KueJadi('Bolu Panggang', 3000, 500);
  KuePesanan brownies = KuePesanan('Brownies', 3500, 500);
  KueJadi lapisLegit = KueJadi('Lapis Legit', 7500, 1000);
  KuePesanan nastar = KuePesanan('Nastar', 4000, 1000);
  KueJadi putriSalju = KueJadi('Putri Salju', 3000, 500);
  KuePesanan lidahKucing = KuePesanan('Kue Lidah Kucing', 350, 500);
  KueJadi klepon = KueJadi('klepon', 2000, 500);
  KuePesanan getuk = KuePesanan('Getuk', 1500, 500);
  KueJadi boluGulung = KueJadi('Bolu Gulung', 4000, 500);
  KuePesanan boluTape = KuePesanan('Bolu Tape', 3500, 500);
  KueJadi kueSus = KueJadi('Kue Sus', 2500, 500);
  KuePesanan donat = KuePesanan('Donat', 2000, 500);
  KueJadi rainbowCake = KueJadi("Rainbow Cake", 10000, 1000);
  KuePesanan blackForest = KuePesanan('Black Forest', 12000, 1000);
  KueJadi strawberryShortCake = KueJadi('Strawberry Shortcake', 15000, 1000);
  KuePesanan redVelvet = KuePesanan('Red Velvet', 10000, 1000);
  KueJadi ondeOnde = KueJadi('Onde-onde', 2500, 500);
  KuePesanan martabakManis = KuePesanan('Martabak Manis', 5000, 500);
  KueJadi martabakTelur = KueJadi('Martabak Telur', 2500, 500);

  List kuekuean = [
    boluKukus,
    boluPanggang,
    brownies,
    lapisLegit,
    nastar,
    putriSalju,
    lidahKucing,
    klepon,
    getuk,
    boluGulung,
    boluTape,
    kueSus,
    donat,
    rainbowCake,
    blackForest,
    strawberryShortCake,
    redVelvet,
    ondeOnde,
    martabakManis,
    martabakTelur
  ];

  for (var i = 0; i < kuekuean.length; i++) {
    print(kuekuean[i].jenis);
    print(kuekuean[i].nama);
    print(kuekuean[i].harga);
    print("===================");
  }

  double totalHargaKuePesanan = 0;
  double totalHargaKueJadi = 0;
  double totalBeratKuePesanan = 0;
  double totalJumlahKueJadi = 0;

  for (int i = 0; i < kuekuean.length; i++) {
    if (kuekuean[i] is KuePesanan) {
      totalHargaKuePesanan += kuekuean[i].harga;
      totalBeratKuePesanan += kuekuean[i].berat;
    } else if (kuekuean[i] is KueJadi) {
      totalHargaKueJadi += kuekuean[i].harga;
      totalJumlahKueJadi += kuekuean[i].jumlah;
    }
  }
  print("===================");
  print("Total harga Kue Pesanan : $totalHargaKuePesanan");
  print("Total harga Kue Jadi : $totalHargaKueJadi");
  print("Total berat Kue Pesanan : $totalBeratKuePesanan");
  print("Total jumlah Kue Jadi : $totalJumlahKueJadi");
  print("===================");

  double hargaTertinggi = kuekuean[0].hitungHarga();

  String jenisKue = '';
  String namaKue = '';

  for (int i = 0; i < kuekuean.length; i++) {
    if (kuekuean[i].hitungHarga() > hargaTertinggi) {
      hargaTertinggi = kuekuean[i].hitungHarga();
      jenisKue = kuekuean[i].jenis;
      namaKue = kuekuean[i].nama;
    }
  }

  print("===================");
  print("Jenis Kue : $jenisKue");
  print("Nama Kue : $namaKue");
  print("Harga Akhir Kue : $hargaTertinggi");
  print("===================");
}
