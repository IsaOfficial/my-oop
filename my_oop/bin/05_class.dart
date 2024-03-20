class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void info() {
    print('Warna: (R: $red, G: $green, B: $blue)');
  }
}

void main() {
  // Membuat beberapa objek warna menggunakan constant constructor
  const warnaMerah = Warna(255, 0, 0);
  const warnaHijau = Warna(0, 255, 0);
  const warnaBiru = Warna(0, 0, 255);

  // Mencetak informasi warna-warna tersebut
  warnaMerah.info();
  warnaHijau.info();
  warnaBiru.info();
}
