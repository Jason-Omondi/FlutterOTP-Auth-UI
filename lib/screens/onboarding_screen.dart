import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget{
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/bugs.png",
              height: 250,
            ),
            const Spacer(),
            Text(
              "Onboarding now begins",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25,),

            Text("Getting started...",
            textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
  
  
  
}