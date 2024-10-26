import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/Widgets/UiHelper.dart';

import 'package:whatsapp_app/Screens/unloadingScreen/OnBoardingScreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/whatsapp.png')),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: 'Whatsapp',
                height: 20,
                fontweight: FontWeight.w900,
                color: Color(0XFF000000))
          ],
        ),
      ),
    );
  }
}
