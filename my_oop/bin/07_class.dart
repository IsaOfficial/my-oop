import 'dart:io';

class RekeningBank {
  double _saldo; // Gunakan private modifier

  RekeningBank(double saldo) : _saldo = saldo;

  double get saldo => _saldo; // Hanya sediakan getter

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('Setor tunai sebesar $jumlah berhasil. Saldo sekarang: $_saldo');
    } else {
      print('Jumlah setoran harus lebih dari 0.');
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Tarik tunai sebesar $jumlah berhasil. Saldo sekarang: $_saldo');
    } else if (jumlah <= 0) {
      print('Jumlah penarikan harus lebih dari 0.');
    } else {
      print('Saldo tidak mencukupi.');
    }
  }
}

void main() {
  var rekening = RekeningBank(1000);

  print('Saldo awal: ${rekening.saldo}');

  stdout.write('Masukkan jumlah penarikan: ');
  var jumlahPenarikan = double.parse(stdin.readLineSync()!);

  rekening.tarik(jumlahPenarikan);
}
