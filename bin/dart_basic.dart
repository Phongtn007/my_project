import 'dart:async';
import 'dart:io';

// Yêu cầu 1: Tạo lớp Vocabulary
class Vocabulary {
  String englishWord;
  String vietnameseMeaning;

  Vocabulary(this.englishWord, this.vietnameseMeaning);

  void printInfo() {
    print('$englishWord: $vietnameseMeaning');
  }

  void updateMeaning(String newMeaning) {
    vietnameseMeaning = newMeaning;
  }
}

// Yêu cầu 2 & 3: Tạo lớp VocabularyDataSource với các phương thức bất đồng bộ
class VocabularyDataSource {
  List<Vocabulary> _vocabList = [
    Vocabulary('apple', 'quả táo'),
    Vocabulary('banana', 'quả chuối'),
    Vocabulary('cat', 'con mèo'),
    Vocabulary('dog', 'con chó'),
    Vocabulary('elephant', 'con voi'),
    Vocabulary('fish', 'con cá'),
    Vocabulary('grape', 'quả nho'),
    Vocabulary('house', 'ngôi nhà'),
    Vocabulary('ice', 'nước đá'),
    Vocabulary('jungle', 'rừng rậm'),
  ];

  Future<List<Vocabulary>> getAllVocabularies() async {
    await Future.delayed(Duration(seconds: 1)); // Giả lập độ trễ
    return _vocabList;
  }

  Future<void> addNewVocabulary(Vocabulary newVocab) async {
    await Future.delayed(Duration(seconds: 1)); // Giả lập độ trễ
    _vocabList.add(newVocab);
  }

  Future<Vocabulary?> searchVocabulary(String englishWord) async {
    await Future.delayed(Duration(seconds: 1)); // Giả lập độ trễ
    return _vocabList.firstWhere(
      (vocab) => vocab.englishWord.toLowerCase() == englishWord.toLowerCase(),
      orElse: () => Vocabulary('', ''), // Trả về đối tượng rỗng thay vì null
    );
  }
}

void main() async {
  VocabularyDataSource dataSource = VocabularyDataSource();

  // In danh sách từ vựng
  print('Danh sách từ vựng:');
  (await dataSource.getAllVocabularies()).forEach((vocab) => vocab.printInfo());

  // Thêm từ vựng mới từ người dùng nhập
  print('\nNhập một từ tiếng Anh mới:');
  String newWord = stdin.readLineSync()!;
  print('Nhập nghĩa tiếng Việt:');
  String newMeaning = stdin.readLineSync()!;

  await dataSource.addNewVocabulary(Vocabulary(newWord, newMeaning));
  print('Đã thêm từ mới.');

  // In lại danh sách
  print('\nDanh sách sau khi thêm từ mới:');
  (await dataSource.getAllVocabularies()).forEach((vocab) => vocab.printInfo());

  // Tìm từ vựng
  print('\nNhập từ muốn tìm:');
  String searchWord = stdin.readLineSync()!;
  Vocabulary? result = await dataSource.searchVocabulary(searchWord);
  if (result != null && result.englishWord.isNotEmpty) {
    print('Tìm thấy:');
    result.printInfo();
  } else {
    print('Không tìm thấy từ này.');
  }
}