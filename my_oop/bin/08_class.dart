import 'dart:math';

// Kelas induk BangunDatar
class BangunDatar {
  double hitungLuas() {
    return 0; // Default implementation, akan dioverride oleh kelas turunan
  }
}

// Kelas turunan Persegi
class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }
}

// Kelas turunan Segitiga
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}

void main() {
  var persegi = Persegi(5);
  var segitiga = Segitiga(4, 3);

  print('Luas persegi: ${persegi.hitungLuas()}');
  print('Luas segitiga: ${segitiga.hitungLuas()}');
}
