import 'package:flutter/material.dart';

import '../components/buttons.dart';
import 'otp_screen.dart';
import 'register_screen.dart';
import '../components/text_field.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  var username = TextEditingController();
  var password = TextEditingController();

  void SignIn() {
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN APPLICATION',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'DynaPuff',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          decorationColor: Color.fromARGB(255, 243, 140, 140),
        ),
      ),
        centerTitle: true,
      ),
      body: Column(children: [
        // human logo
        Icon(
            Icons.manage_accounts,
            size: 50
        ),
        SizedBox(height: 50),
        // title text
        Text(
          'Welcome!',
          style: TextStyle(
            color: Color.fromARGB(255, 100, 90, 90),
            fontSize: 16,
            fontFamily: 'DynaPuff',
          ),
        ),

        SizedBox(height: 15,), // margins

//username field
        Text_field(
          inputController: username,
          hint_Text: 'Type in Username',
          hidden: false,
        ),

        SizedBox(height: 10,),

//password field
        Text_field(
          inputController: password,
          hint_Text: 'Type in Password',
          hidden: true,
        ),
        SizedBox(height: 10,),

        //forgot password field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),

        //login button
        button(OnTap: SignIn,
          buttonText: 'Sign In',
        ),
        SizedBox(height: 25,),

        //sign/login with google, twitter, github
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.25,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Sign in using ',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.25,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        //new sign up / login if member
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Don\'t have an account? Register here',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],),
    );
  }
}