void main() {
  // ini adalah contoh jika kita menerapkan positional argument
  var pakaian1 = Pakaian(jenis: "Kemeja", warna: "Navy", ukuran: "M");
  // ini adalah cara ingin mengganti atribut dengan manual
  // cara ini tidak bisa dipakai ketika ada atribut yang private
  // pakaian1.ukuran = "S";
  // ini adalah cara ingin mengganti atribut dengan method
  pakaian1.gantiUkuran("XLLLLL");

  // ini adalah contoh jika kita menerapkan named argument
  // var pakaian1 = Pakaian(warnaNya: 'Navy', jenisNya: 'Kemeja');

  // ini adalah contoh jika kita menerapkan pemanggilan direct named argument
  // var pakaian1 = Pakaian(warna: 'Navy', jenis: 'Kemeja');

  // Ini adalah cara paling dasar, dan bisa dibilang memakan waktu
  // pakaian1.jenis = 'Kemeja';
  // pakaian1.warna = 'Navy';
  // mengambil data ukuran menggunakan metode get biasa
  print(
      "Ini adalah ${pakaian1.jenis} dengan warna ${pakaian1.warna} berukuran ${pakaian1.ukuran()}");

  var pakaian2 = Pakaian(jenis: "Kaos", warna: "Hitam", ukuran: "L");
  // Ini adalah cara paling dasar, dan bisa dibilang memakan waktu
  // pakaian2.jenis = 'Kaos';
  // pakaian2.warna = 'Hitam';
  // mengambil data ukuran menggunakan metode get biasa
  print(
      "Ini adalah ${pakaian2.jenis} dengan warna ${pakaian2.warna} berukuran ${pakaian2.ukuran()}");
}

class Pakaian {
  // Atribut, sebuah data di dalam sebuah atribut
  String? jenis;
  String? warna;
  // menggunakan symbol "_" menandakan bahwa atribut ini bersifat private
  String? _ukuran;

  // Constructor
  // ini adalah cara yang cukup cepat, dibanding cara paling dasar yang lumayan memakan waktu
  // Pemanggilan nama class
  // Positional Constructor / positional argument
  // Pakaian(String jenisNya, String warnaNya) {
  //   jenis = jenisNya;
  //   warna = warnaNya;
  // }

  // named argument
  // Pakaian({String jenisNya, String warnaNya}) {
  //   jenis = jenisNya;
  //   warna = warnaNya;
  // }

  // constructor -> direct named argument
  Pakaian({this.jenis, this.warna, String? ukuran}) {
    _ukuran = ukuran;
  }

  // METHOD
  // adalah trick jika kita ingin mengganti sebuah nilai dengan cara yang lebih rapi
  // ini adalah fungsi set biasa
  void gantiUkuran(String ukuranBaru) {
    _ukuran = ukuranBaru;
  }

  // Cara ngambil data nya adalah dengan menggunakanfungsi Get biasa
  String? ukuran() {
    return _ukuran;
  }

  // Cara ngambil data menggunakan Getter beneran
  // dipakai
  // String? get ukuran {
  //   return _ukuran;
  // }

  // fungsi setter
  // sudah pasti bertipe void
  // set setUkuran(String? newUkuran) {
  //   _ukuran = newUkuran;
  // }
}
