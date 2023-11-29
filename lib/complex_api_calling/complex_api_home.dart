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
  bool isLoading = false;
  final myController = TextEditingController();
  String get keyword => myController.text;

  getBook() async {
    try {
      var response = await http.get(
          Uri.parse('https://www.googleapis.com/books/v1/volumes?q=$keyword'));
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
          centerTitle: true,
          title: const Text(
            'Mudakir Book Store',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: myController,
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      getBook();
                    },
                    child: const Icon(
                      Icons.search,
                      size: 35,
                    ))
              ],
            ),
            if (!isLoading)
              Expanded(
                child: ListView.builder(
                    itemCount: booksResponse?.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                          booksResponse?.items![index].volumeInfo?.imageLinks
                                  ?.thumbnail ??
                              '',
                        ),
                        title: Text(
                            booksResponse?.items![index].volumeInfo?.title ??
                                ''),
                        subtitle: Text(
                          booksResponse?.items![index].volumeInfo?.title ?? '',
                          style: const TextStyle(fontSize: 11),
                        ),
                      );
                    }),
              ),
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
          ],
        ));
  }
}
