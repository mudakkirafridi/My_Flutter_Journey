import 'package:flutter/material.dart';
import 'package:flutter_full_course/widgets/message-cont.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MessagesScreen> {
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
            child: Container(
              color: Colors.black,
              child: const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                      messageBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.grey,
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.add),
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: TextFormField(),
                      )),
                )),
                const Icon(Icons.send),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
