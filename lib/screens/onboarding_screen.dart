import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../components/btn_onboarding.dart';
import 'login_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){ 
    return OrientationBuilder(
      builder: (context, orientation) {
        return SafeArea(
            child: IntroductionScreen(
              pages: [
                PageViewModel(
                  title: 'A reader lives a thousand lives',
                  body: 'In the bleak mid-winter',
                  image: buildImage('assets/images/kovu.png'),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: 'Here we go',
                  body: 'Available right at your fingerprints',
                  image: buildImage('assets/images/wada.png'),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: 'Simple UI Onboarding',
                  body: 'Just for enhanced app experience',
                  image: buildImage('assets/images/rr_.png'),
                  decoration: getPageDecoration(),
                ),
                PageViewModel(
                  title: 'Today a learner, tomorrow a beast',
                  body: 'Starting here',
                  footer: ButtonWidget(
                    text: 'Next steps',
                    onClicked: () => goToHome(context),
                  ),
                  image: buildImage('assets/images/cockpit_1.png'),
                  decoration: getPageDecoration(),
                ),
              ],
              done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
              onDone: () => goToHome(context),
              showSkipButton: true,
              skip: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Skip', textAlign: TextAlign.center, style: TextStyle(color: Colors.black,),),
              ),
              onSkip: () => LoginPage(),
              next: Icon(Icons.arrow_forward, color: Colors.yellow,),
              dotsDecorator: getDotDecoration(),
              onChange: (index) => print('Page $index selected'),
              globalBackgroundColor: Theme.of(context).primaryColor,
              skipFlex: 0,
              nextFlex: 0,
              // isProgressTap: false,
              // isProgress: false,
              // showNextButton: false,
              // freeze: true,
              // animationDuration: 1000,
            ),
          );
      }
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}