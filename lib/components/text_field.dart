import 'package:flutter/material.dart';

import '../screens/otp_screen.dart';

class Text_field extends StatelessWidget{

  var inputController;
  String hint_Text;
  bool hidden;

  Text_field({super.key, required this.inputController, required this.hint_Text, required this.hidden});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: inputController,
        obscureText: hidden,
        onTap: null,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          fillColor: Colors.grey,
          filled: true,
          hintText: hint_Text,
        ),
      ),
    );
  }
}