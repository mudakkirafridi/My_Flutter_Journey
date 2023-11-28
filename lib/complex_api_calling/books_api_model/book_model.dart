import 'package:flutter_full_course/complex_api_calling/books_api_model/volume_info_model.dart';

class Book {
  VolumeInfo? volumeInfo;
  Book({this.volumeInfo});

  factory Book.fromJson(Map<String, dynamic> json) {
    var bookParsed = Book();
    bookParsed.volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);

    return bookParsed;
  }
}
