import 'dart:convert';
import 'dart:math';
import 'package:flutter_full_course/complex_api_calling/books_api_model/book_response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class BooksApis extends StatefulWidget {
  const BooksApis({super.key});

  @override
  State<BooksApis> createState() => _BooksApisState();
}

class _BooksApisState extends State<BooksApis> {
  BooksResponse? booksResponse;
  @override
  void initState() {
    super.initState();
    _getBook();
  }

  _getBook() async {
    try {
      var response = await http
          .get(Uri.parse('https://www.googleapis.com/books/v1/volumes?q=mind'));
      var decodedJson =
          jsonDecode(response.body.toString()) as Map<String, dynamic>;
      setState(() {
        booksResponse = BooksResponse.fromJson(decodedJson);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Google Book Api'),
        ),
        body: ListView.builder(
            itemCount: booksResponse?.items?.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                title:
                    Text(booksResponse?.items![index].volumeInfo?.title ?? ''),
              );
            }));
  }
}
