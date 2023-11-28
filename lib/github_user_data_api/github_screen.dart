import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GithubScreen extends StatefulWidget {
  const GithubScreen({super.key});

  @override
  State<GithubScreen> createState() => _GithubScreenState();
}

class _GithubScreenState extends State<GithubScreen> {
  Map<String, dynamic> dataList = {};
  var biodata;
  callApi() async {
    try {
      var response = await http
          .get(Uri.parse('https://api.github.com/users/ishaquehassan'));
      dataList = jsonDecode(response.body.toString());
      setState(() {
        biodata = dataList['name'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Data'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(biodata.toString()),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Are you sure you want to exit')));

                  callApi();
                },
                child: const Text("Show")),
          )
        ],
      ),
    );
  }
}
