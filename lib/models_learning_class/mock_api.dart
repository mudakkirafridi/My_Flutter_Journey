import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_full_course/models_learning_class/model/todo_model.dart';
import 'package:http/http.dart' as http;

class MockApiScreen extends StatefulWidget {
  const MockApiScreen({super.key});

  @override
  State<MockApiScreen> createState() => _MockApiScreenState();
}

class _MockApiScreenState extends State<MockApiScreen> {
  List<Todo> mockApiList = [];
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  getTodos() async {
    setState(() {
      isloading = true;
    });
    try {
      var response = await http.get(Uri.parse(
          'https://655dd3c89f1e1093c599f3a6.mockapi.io/todo/v1/Todos'));
      setState(() {
        mockApiList =
            Todo.fromJsonList(jsonDecode(response.body) as List<dynamic>);
      });
    } catch (e) {
      print(e);
    }

    setState(() {
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mocks Api Learning'),
        ),
        body: !isloading
            ? ListView.builder(
                itemCount: mockApiList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mockApiList[index].title ?? ''),
                    subtitle: Text(mockApiList[index].description ?? ''),
                  );
                })
            : const Center(child: CircularProgressIndicator()));
  }
}
