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

class AppTextField extends StatelessWidget {
  final String placeholder;
  const AppTextField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: const Color.fromARGB(31, 220, 216, 216),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white)),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: placeholder,
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 157, 155, 155), fontSize: 20)),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback myPress;
  const AppButton({super.key, required this.label, required this.myPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myPress,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
