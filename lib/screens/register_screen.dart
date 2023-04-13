import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../components/text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();

  void registerUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'REGISTER HERE',
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
      body: Column(
        children: [
          // human logo
          Icon(Icons.manage_accounts, size: 50),
          SizedBox(height: 50),
          // title text
          Text(
            'Create Account!',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15), // margins

          // email field
          Text_field(
            inputController: email,
            hint_Text: 'Type in Email',
            hidden: false,
          ),

          SizedBox(height: 10),

          // password field
          Text_field(
            inputController: password,
            hint_Text: 'Type in Password',
            hidden: true,
          ),
          SizedBox(height: 10),

          // confirm password field
          Text_field(
            inputController: confirmPassword,
            hint_Text: 'Confirm Password',
            hidden: true,
          ),
          SizedBox(height: 10),

          // register button
          button(
            OnTap: registerUser,
            buttonText: 'Sign Up',
          ),
          SizedBox(height: 25),

          // already a member
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already a member? '),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
