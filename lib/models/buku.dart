/// 1. Class Buku, defining the properties (judul, penulis, harga)
class Buku {
  String _judul;
  String _penulis;
  String _harga;

  /// 2. Constructor for the Buku class
  Buku(this._judul, this._penulis, this._harga);

  /// 3. Getter methods for the properties, using the underscore (_) to indicate that they are private
  String get judul => _judul;
  String get penulis => _penulis;
  String get harga => _harga;

  /// 4. Setter methods for harga attribute, this logic will ensure that harga cannot be set to a negative value
  set harga(double nilaiBaru) {
    if (nilaiBaru >= 0) {
      _harga = nilaiBaru.toString();
    } else {
      print("Harga tidak boleh negatif");
    }
  }

  /// 5. Method info() to return  a String, which contains the information of the book (judul, penulis, harga)
  String info() {
    return 'Judul: $_judul, Penulis: $_penulis, Harga: $_harga';
  }
}

/// 6. BukuDigital class extends Buku class, adding a new property _ukuranFile
class BukuDigital extends Buku {
  /// 7. One additional attribute _ukuranFile, which is a double representing the file size of the digital book
  double _ukuranFile;

  /// 8. Constructor for the BukuDigital class, which calls the super constructor of the Buku class
  BukuDigital(String judul, String penulis, String harga, this._ukuranFile)
    : super(judul, penulis, harga);

  /// 9. Override the info() method to include the additional property _ukuranFile in the returned String
  @override
  String info() {
    return '${super.info()}, Ukuran File: $_ukuranFile MB';
  }
}
