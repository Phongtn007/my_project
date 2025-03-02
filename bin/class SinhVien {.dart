class SinhVien {
  String ten;
  int tuoi;
  String maSV;
  double diemTB;

  SinhVien(this.ten, this.tuoi, this.maSV, this.diemTB);

  String get hocBong => diemTB >= 8.5 ? 'Có' : 'Không';

  void hienThiThongTin() {
    print(
        '${maSV.padRight(10)} | ${ten.padRight(20)} | ${tuoi.toString().padLeft(3)} tuổi | ${diemTB.toStringAsFixed(2).padLeft(5)} | ${hocBong.padRight(5)}');
  }
}

class DanhSachSinhVien {
  List<SinhVien> danhSach = [];

  void themSinhVien(SinhVien sv) {
    danhSach.add(sv);
  }

  void hienThiDanhSach() {
    print('Mã SV      | Tên                 | Tuổi | Điểm TB | Học bổng');
    print('------------------------------------------------------------');
    for (var sv in danhSach) {
      sv.hienThiThongTin();
    }
  }
}

void main() {
  var ds = DanhSachSinhVien();

  ds.themSinhVien(SinhVien('Tran Viet Hoang', 17, 'SV001', 8.7));
  ds.themSinhVien(SinhVien('Le Anh Minh', 17, 'SV002', 7.5));
  ds.themSinhVien(SinhVien('Nguyen Thanh Phong', 18, 'SV003', 9.0));

  print('Danh sách sinh viên:');
  ds.hienThiDanhSach();
}
