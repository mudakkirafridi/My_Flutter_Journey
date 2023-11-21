import 'package:flutter/material.dart';
import 'package:flutter_full_course/complex_data_handling/model/list_model.dart';

class CompDataHandScreen extends StatefulWidget {
  const CompDataHandScreen({super.key});

  @override
  State<CompDataHandScreen> createState() => _CompDataHandScreenState();
}

class _CompDataHandScreenState extends State<CompDataHandScreen> {
  List<ListModel> listData = [];
  int? editIndex;
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complex Data Handling')),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(children: [
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(hintText: "Enter title"),
                  ),
                  TextFormField(
                    controller: subtitleController,
                    decoration:
                        const InputDecoration(hintText: "Enter subtitle"),
                  ),
                ]),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (editIndex == null) {
                        listData.add(ListModel(
                            titleController.text, subtitleController.text));
                      } else {
                        var existingIndex = listData[editIndex!];
                        existingIndex.title = titleController.text.toString();
                        existingIndex.description =
                            subtitleController.text.toString();
                        setState(() {
                          listData[editIndex!] = existingIndex;
                          editIndex = null;
                        });
                      }

                      titleController.clear();
                      subtitleController.clear();
                    });
                  },
                  child: Text("${editIndex != null ? 'Update' : 'Add'} Data"))
            ],
          ),
          const Text(
            'This App Stored Parmanent Data I Not Used Shared Prefrence',
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(listData[index].title),
                      subtitle: Text(listData[index].description),
                      trailing: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  listData.removeAt(index);
                                });
                              },
                              child: const Icon(Icons.delete_outline)),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  titleController.text = listData[index].title;
                                  subtitleController.text =
                                      listData[index].description;
                                  editIndex = index;
                                });
                              },
                              child: const Icon(Icons.edit))
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
