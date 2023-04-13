import 'package:flutter/material.dart';
import '../screens/otp_screen.dart';

class button extends StatelessWidget{
  Function ()? OnTap;
  String buttonText;

  button({super.key, required this.OnTap, required this.buttonText});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTPForm()),
    );
      },
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}