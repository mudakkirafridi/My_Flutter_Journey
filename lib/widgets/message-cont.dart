import 'package:flutter/material.dart';

class messageBox extends StatelessWidget {
  const messageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            '10:09 PM',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(221, 55, 54, 54),
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Hi mudakir how are you this is a simple text message in this screen so ignore the text just focus on the design pattern i practic in flutter first video with tech idara',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
