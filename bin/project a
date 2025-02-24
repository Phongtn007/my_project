import 'dart:io';

void main() {
  List tenhocsinh = [];
  //print menu items
  //read data từ bàn phím-> chọn
  //switch case
  //case : "1"=> add item to names list
  //case : "2"=> for loop tp print name item
  //case : "3"=> sort name list => sprint
  //case : "0"=>return
  while (true) {
    print("text menu");
    print("1 nhập tên học sinh");
    print("2 danh sách học sinh đã nhập");
    print("3 sắp xếp theo thứ tự alphabetical");
    print("0 thoát ra");
    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        print('nhập họ và tên');
        print('họ và tên :');
        var ten = stdin.readLineSync();
        if (ten != null) {
          tenhocsinh.add(ten);
        }
        break;
      case '2':
        print('đây là danh sách học sinh đã nhập');
        for (var ten in tenhocsinh) {
          print(ten);
        }
        break;
      case '3':
        print('danh sách đã đc sắp xếp');
        tenhocsinh.sort();
        for (var ten in tenhocsinh) {
          print(ten);
        }
        break;
      default:
        print('thoát ra');
        exit(0);
    }
  }
}
