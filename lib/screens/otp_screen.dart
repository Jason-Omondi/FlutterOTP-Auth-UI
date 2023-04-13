import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/buttons.dart';

class OTPForm extends StatelessWidget{
  void otpValidate() {}
  OTPForm({super.key,});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('OTP AUTH',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'DynaPuff',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          decorationColor: Color.fromARGB(255, 243, 17, 17),
        ),
      ),
        centerTitle: true,
      ),
      body: Column(
        
        children: [
          Icon(
            Icons.manage_accounts,
            size: 50
        ),
        SizedBox(height: 50),
        // title text
        Text(
          'Enter OTP Code here',
          style: TextStyle(
            color: Color.fromARGB(255, 100, 90, 90),
            fontSize: 16,
            fontFamily: 'DynaPuff',
          ),
        ),
        SizedBox(height: 50),
          Column(
            children: [
              Form(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (otpNum) {}, // returs the OTP code input by user
                            decoration: InputDecoration(hintText: '-'),
                            style: Theme.of(context).textTheme.titleLarge,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (otpNum) {}, // returs the OTP code input by user
                            decoration: InputDecoration(hintText: '-'),
                            style: Theme.of(context).textTheme.titleLarge,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (otpNum) {}, // returs the OTP code input by user
                            decoration: InputDecoration(hintText: '-'),
                            style: Theme.of(context).textTheme.titleLarge,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (otpNum) {}, // returs the OTP code input by user
                            decoration: InputDecoration(hintText: '-'),
                            style: Theme.of(context).textTheme.titleLarge,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ),
              
              ),
              Divider(),  // separated the content
              SizedBox(height: 50,),

              button(
            OnTap: otpValidate,
            buttonText: 'Next',
          ),
            ],
          ),

        ],
        
      ),
      
    );
  }

}