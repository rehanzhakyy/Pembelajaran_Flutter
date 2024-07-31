void main() {
  String name = "Raihan";

  // menggunakan if, else if dan else
  if (name == "Raihan") {
    print("Nama Saya adalah $name ");
  } else if (name == "Zhaky") {
    print("Nama Saya adalah $name");
  } else {
    print("Nama Saya adalah $name");
  }

  // menggunakan switch
  switch (name) {
    case "Raihan":
      print("Nama Saya Adalah Raihan");
      break;
    case "Zhaky":
      print("Nama Saya Adalah Zhaky");
      break;
    default:
      print("Nama dia bukan Raihan dan bukan Zhaky, nama dia adalah $name");
  }
}
