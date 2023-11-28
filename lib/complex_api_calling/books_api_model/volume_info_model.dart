import 'package:flutter_full_course/complex_api_calling/books_api_model/image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  ImageLinks? imageLinks;
  VolumeInfo({this.title, this.authors, this.imageLinks});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    var volumeInfo = VolumeInfo();
    volumeInfo.title = json['title'];
    volumeInfo.authors = [];
    for (var authorStr in json['authors']) {
      volumeInfo.authors!.add(authorStr);
    }
    volumeInfo.imageLinks = ImageLinks.fromJson(json['imageLinks']);
    return volumeInfo;
  }
}
