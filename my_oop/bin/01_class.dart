class Mobil {
  String? merk;
  String? model;
  int? tahun;
}

void main() {
  Mobil mobil1 = Mobil();
  
  mobil1.merk = "Koenigsegg";
  mobil1.model = "Jesko Absolute";
  mobil1.tahun = 2021;

  print("Merek: ${mobil1.merk}");
  print("Model: ${mobil1.model}");
  print("Tahun: ${mobil1.tahun}");
}