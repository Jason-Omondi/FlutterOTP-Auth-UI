import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget{
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: OnboardContent(
          image: 'assets/images/bugs.png', description: 'Firing Up...', title: 'Onboarding...',
        ),
      ),
    );
  }
  
  
  
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key, required this.image, required this.title, required this.description
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 25,),

        Text(description,
        textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}