import 'package:flutter/material.dart';
import 'package:flutter_full_course/assignment/form_screen.dart';

class AssinmentScreen extends StatefulWidget {
  const AssinmentScreen({super.key});

  @override
  State<AssinmentScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AssinmentScreen> {
  List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: items.isNotEmpty
          ? ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return item(context, index);
              },
            )
          : const Center(
              child: Icon(
                Icons.production_quantity_limits,
                size: 70,
                color: Colors.white,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<String>(context,
                  MaterialPageRoute(builder: (builder) => const FormScreen()))
              .then((value) => setState(() {
                    items.add(value!);
                  }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget item(BuildContext context, int index) => Card(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Text(items[index])),
              InkWell(
                onTap: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      );
}
