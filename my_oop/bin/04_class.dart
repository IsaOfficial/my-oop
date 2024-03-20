class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // Constructor utama
  Segitiga(this.alas, this.tinggi, this.jenis);

  // Named constructor untuk segitiga siku-siku
  Segitiga.sikuSiku(double alas, double tinggi)
      : this(alas, tinggi, 'siku-siku');

  // Named constructor untuk segitiga sama sisi
  Segitiga.samaSisi(double sisi)
      : this(sisi, (sisi * (3 / 2)).toDouble(), 'sama sisi');

  // Named constructor untuk segitiga sama kaki
  Segitiga.samaKaki(double alas, double tinggi)
      : this(alas, tinggi, 'sama kaki');

  void info() {
    print('Segitiga $jenis dengan alas $alas dan tinggi $tinggi');
  }
}

void main() {
  // Membuat objek segitiga menggunakan named constructor
  var segitiga1 = Segitiga.sikuSiku(3, 4);
  var segitiga2 = Segitiga.samaSisi(5);
  var segitiga3 = Segitiga.samaKaki(4, 6);

  // Mencetak informasi segitiga
  segitiga1.info();
  segitiga2.info();
  segitiga3.info();
}
