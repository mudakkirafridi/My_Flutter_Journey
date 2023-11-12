import 'package:flutter/material.dart';
import 'package:flutter_full_course/widgets/message-cont.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lets Sign You Up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Welcome \nJoin The Community!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTextField(placeholder: "Enter First Name"),
            const AppTextField(placeholder: "Enter Your Last Name"),
            const AppTextField(placeholder: "Enter Email Here!"),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have An Account?',
                  style: TextStyle(color: Color.fromARGB(255, 186, 184, 184)),
                ),
                Text(
                  ' SignUp',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(label: "SignUp", myPress: () {})
          ],
        ),
      ),
    );
  }
}
