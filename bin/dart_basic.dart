void main() {
  List<String> name = ['phong', 'hoang', 'dung', 'vu', 'ngoc'];
  name.insert(0, 'tuyen');
  name.removeWhere((name) => name.length < 4);
  print(name);
  for (var num in name) {
    print(num);
  }
}
