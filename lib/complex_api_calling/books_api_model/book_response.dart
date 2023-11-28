import 'package:flutter_full_course/complex_api_calling/books_api_model/book_model.dart';
import 'package:flutter_full_course/complex_api_calling/books_api_model/image_links.dart';

class BooksResponse {
  int? totalItems;
  List<Book>? items;
  BooksResponse({this.items, this.totalItems});

  factory BooksResponse.fromJson(Map<String, dynamic> jsonData) {
    var bookResponses = BooksResponse();
    bookResponses.totalItems = jsonData['totalItems'];
    bookResponses.items = [];
    for (var bookJson in (jsonData['items'] as List<dynamic>)) {
      var bookMap = bookJson as Map<String, dynamic>;
      bookResponses.items?.add(Book.fromJson(bookMap));
    }
    return bookResponses;
  }
}
