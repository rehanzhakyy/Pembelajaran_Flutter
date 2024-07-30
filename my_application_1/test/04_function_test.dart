void main() {
  int hasilPenjumlahan = penjumlahan(1, 2, 3);
  hasilPenjumlahan = hasilPenjumlahan + 2;
  print("Hasil diluar function (main) adalah $hasilPenjumlahan");

  pengurangan(1, 7);
}

// Tidak bisa menggunakan void, karena void tidak bisa mereturn nilai
// makanya dikasus ini kita menggunakan int
int penjumlahan(int angka1, int angka2, int angka3) {
  int hasil = angka1 + angka2 + angka3;
  print("Hasil didalam function : $hasil");
  return hasil;
}

// disini menggunakan void karena untuk mengembalikan nilainya menggunakan print
void pengurangan(int angka1, int angka2) {
  print(angka1 - angka2);
}
