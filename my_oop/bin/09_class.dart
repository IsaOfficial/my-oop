import 'dart:math';

// Abstract class Bentuk
abstract class Bentuk {
  double hitungLuas(); // Metode abstrak
}

// Kelas turunan Lingkaran
class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return pi * jariJari * jariJari;
  }
}

void main() {
  var lingkaran = Lingkaran(5);

  print('Luas lingkaran: ${lingkaran.hitungLuas()}');
}
