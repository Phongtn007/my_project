class maytinhcamtay {
  String? hang;
  double? giatien;
  String? mausac;
  String? chucnang;
  maytinhcamtay(this.hang, this.giatien, this.mausac, this.chucnang);
  void inthongtin() {
    print("thong tin sp: ${hang}, ${giatien}, ${mausac}, ${chucnang}");
  }
}

void main(List<String> args) {
  List<maytinhcamtay> danhsach = [];
  maytinhcamtay sanpham =
      maytinhcamtay("casio", 12.5, "den", "tinh toan bac 2");
  danhsach.add(sanpham);
  maytinhcamtay sanpham2 =
      maytinhcamtay("vinacal", 12.4, "trang", "giai pt 3 an");
  danhsach.add(sanpham2);
  for (var tensanpham in danhsach) {
    tensanpham.inthongtin();
  }
}
