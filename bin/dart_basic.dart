void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  numbers.removeAt(6);
  print(numbers);
  int sum = numbers.fold(0, (prev, element) => prev + element);
  
  print("tổng là: $sum");
}
