void main() {
  // collection -> 1 variable yang bisa menyimpan banyak data

  // ini adalah collection yg pertama yaitu, List
  List mentor = ['Raihan', 'Zhaky', 'Al hafizh'];
  // ini kasusnya adalah ketika menggunakan for
  for (int i = 0; i < mentor.length; i++) {
    print("Mentor ke ${i + 1} = ${mentor[i]}");
  }

  // ini kasusnya adalah ketika menggunakan foreach
  int i = 0;

  mentor.forEach((item) {
    print("Mentor ke ${i + 1} = $item");
    i++;
  });

  // ini kasusnya adalah ketika menggunakan for loop dan in
  for (String item in mentor) {
    print("Mentor ke ${i + 1} = $item");
    i++;
  }

  // ini adalah collection yang kedua yaitu, set
  // data dari set tidak bisa diambil menggunakan index sperti pada list
  // kita menggunakan elementAt
  // kalau menggunakan set, kita punya banyak extension function seperti union, intersection dll
  Set mtkSet = {12, 4, 3, 2, 22};
  Set fksSet = {2, 3, 4, 6};
  print(mtkSet.union(fksSet));

  // ini adalah collection yang ketiga yaitu, Map
  // Map identik dengan key dan value
  // key = "mtk"
  // value = [nilai]
  // karena ini berbentuk list kita bisa menggunakan index
  Map nilai = {
    "mtk": [12, 334, 5, 3656, 35],
    "fsk": [23, 23, 56, 464, 3]
  };
  print(nilai);

  // Spread Collection
  // jika dalam kasusnya kita ingin menambahkan value di dalam list / set
  // bisa diimplementasikan di dalam list, dan juga set
  Set kimia = {1, 2, 32, 5, 6, 3, 52};
  Set newKimia = {...kimia, 9};
  print(newKimia);
}
