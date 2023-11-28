import 'package:flutter/material.dart';
import 'package:flutter_full_course/complex_api_calling/complex_api_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BooksApis(),
    );
  }
}
