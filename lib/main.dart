import 'package:flutter/material.dart';
import 'package:flutter_full_course/complex_data_handling/comp_data_handling.dart';
import 'package:flutter_full_course/github_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GithubScreen(),
    );
  }
}
