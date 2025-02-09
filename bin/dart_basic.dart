void main() {
  var soThuNhat = 24;
  var soThuHai = 837;
  var tong = add(soThuNhat, soThuHai);
  print(tong);
  print(product(soThuNhat, soThuHai));
}

int add(int a, int b) {
  int sum = a + b;
  return sum;
}

int product(int a, int b) {
  int product = a * b;
  return product;
}
