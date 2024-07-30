void main() {
  // seperti namanya try adalah untuk mencoba
  try {
    int umur = int.parse("456we");
    print(umur);
  } on FormatException { // jika ingin lebih kompleks lagi, dengan keyword on lalu diikuti nama error nya apa
    print("data yang diinputkan harus berupa angka");
  } catch (e) {
    // bisa dianggap catch disini adalah menangkap, menangkap error
    print("Error bersifat general");
  }
}
