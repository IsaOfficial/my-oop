class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('Hewan ini mengeluarkan suara.');
  }
}

class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('Meow! Meow!');
  }
}

void main() {
  var kucing = Kucing('Momo', 'Persia');
  kucing.suara();
}
