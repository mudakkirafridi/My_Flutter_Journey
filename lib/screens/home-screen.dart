import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ))
        ],
      ),
    );
  }
}
