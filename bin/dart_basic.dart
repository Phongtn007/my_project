void main() {
  Map<String, String> sodienthoai = {
    'phong': '09374276937',
    'ngoc': '09327835528',
    'hoang': '02426976236',
  };
  sodienthoai['tuyen'] = '08283562862';
  sodienthoai['vu'] = '02726583627';
  sodienthoai.addAll({'dung': '0365852745', 'kien': '05473285485'});
  sodienthoai.remove('hoang');
  sodienthoai.forEach(
    (key, value) {
      print('$key:$value');
    },
  );
  print(sodienthoai);
}
