void main() {
  var soThuNhat = 24;
  var soThuHai = 999;
  var tong = add(soThuNhat, soThuHai);
  print(tong);
  print(product(soThuNhat, soThuHai));
  
  var doC = 29.0;
  var doF = chuyenDoiNhietDo(doC);
  print("${doC} Độ C = ${doF} Độ F");
}

int add(int a, int b) {
  int sum = a + b;
  return sum;
}

int product(int a, int b){
  int product = a * b;
  return product;
}

double chuyenDoiNhietDo(double doC){
  // tinh toan do F
  return (doC * 9 / 5) + 32;
}