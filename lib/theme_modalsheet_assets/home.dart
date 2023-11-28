import 'package:flutter/material.dart';

class MyMainApp extends StatelessWidget {
  const MyMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme assets ModalSheet Tutorial'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                myDialog(context);
              },
              child: const Text('ShowDialog'))
        ],
      ),
    );
  }

  myDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('MyShowDialog'),
            content: Text("Are You Sure You Want To Exit!"),
            actions: [
              ElevatedButton(onPressed: () {}, child: const Text('Ok')),
              ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
            ],
          );
        });
  }
}
