// class ini dibuat secara general, contohnya ketika hewan tersebut mempunyai atribut yang sama
// jika hewan yang dimaksud punya atribut yang berbeda, maka disarankan untuk membuat class khusus bernama hewan tersebut
class Hewan{
  String kategori; // Mamalia, ternak
  String nama;
  int? jumlahKaki;
  late int _berat; // dalam kg -> sifatnya wajib ada datanya

  Hewan({required this.nama, required int berat, this.jumlahKaki, required this.kategori}) {
    _berat = berat;
  }

  get berat => _berat;

  set makan(int beratMakan) {
    _berat = _berat + beratMakan;
  }

}


// abstract class digunakan untuk mencegah terjadi nya penulisan double