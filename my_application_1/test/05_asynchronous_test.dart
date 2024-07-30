void main() {
  // ini adalah proses synchronous
  print("a");
  print("b");
  print("c");
  cetakD();
  print("e");
  cetakF();
  // Ini adalah implementasi dari Future function
  cetakG().then((data) => print("SUKSES")).catchError((err) => print("ERROR"));
}

void cetakD() {
  // ini adalah proses asynchronous
  // dan juga dinamakan anonymous function -> Future (() {})
  // juga bisa ditambahkan delay dengan menggunakan extension function yang sudah disediakan
  Future(() {
    print("d");
  });
}

// ini adalah cara lain untuk mengimplementasikan kode asynchronous
// dengan menggunakan async await
void cetakF() async {
  await Future.delayed(Duration(seconds: 3));

  print("f");
  print("Berhasil mencetak f");
}

// Function Future
// digunakan untuk mengimplementasikan data dan catch error (sama seperti try catch di bhs pemrograman lain)
/// Implementasi nya ada di fungsi [main] line ke 9
// untuk melihat hasil sukses nya adalah dengan menggunakan "RETURN", berarti tidak bole menggunakan void krn void tidak mengembalikan nilai
// untuk melihat hasil error nya adalah dengan menggunakan "THROW"
Future<String> cetakG() async {
  await Future.delayed(Duration(seconds: 2));

  print("g");
  return "Berhasil mencetak G";
}

// Tiga step asynchronous
// Uncomplete
// Complete -> Sukses -> Return
// Complete -> Error -> Throw
