void main() {
  // null safety adalah cara untuk menanggulangi null
  // ? -> diperbolehkan untuk null
  // ?? -> untuk ngehandle null
  // ! -> udah dipastikan bahwa data sudah pasti ada dan tidak null
  // late -> memastikan bahwa sebelum di eksekusi, variabel nya sudah diinisialisasi

  String? nama = getNama();
  //  ini adalah cara pertama
  print(nama?.length ?? 'TIDAK ADA NAMA');

  //  ini adalah cara kedua
  // if (nama?.length == null) {
  // digunakan untuk menghandle data null, jika data sama null maka tampilin tidak ada nama
  //   print("TIDAK ADA NAMA");
  // } else {
  // ini digunakan ketika sudah dipastikan bahwa data emang sudah ada (harus sangat diperhatikan dan yakin kalau data sudah pasti ada)
  //   print("$nama terdiri dari ${nama!.length} karakter");
  // }
}

String? getNama() {
  return 'Raihan';
}
