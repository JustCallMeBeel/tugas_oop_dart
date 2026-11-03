import "package:uts_20241030001/models/buku.dart";

/// 1. The main() function so that the program can be run
void main() {

/// 2. List of Buku objects, including both Buku and BukuDigital instances, to demonstrate polymorphism
  List<Buku> bukuList = [
    Buku("Buku A", "Penulis A", "50000"),
    Buku("Buku B", "Penulis B", "60000"),

/// 3. Adding file size information for BukuDigital instances, which is a double representing the file size in MB
    BukuDigital("Buku Digital A", "Penulis C", "70000", 2.5),
    BukuDigital("Buku Digital B", "Penulis D", "80000", 15.0),
    BukuDigital("Buku Digital C", "Penulis E", "90000", 8.4),
  ];

/// 4. Polymorphism is demonstrated here, and for-in for iterating one by one Buku object
  print("---------------- My Library ----------------");
  for (var buku in bukuList) {
/// 5. Calling the buku.info() method for knowing which one is Buku and which one is BukuDigital
    print(buku.info());
  }

}