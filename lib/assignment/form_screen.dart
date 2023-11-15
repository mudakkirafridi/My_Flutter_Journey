import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Notes'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: myController,
            decoration: const InputDecoration(hintText: "Add Notes"),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, myController.text.toString());
              },
              child: const Text('Save')),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
