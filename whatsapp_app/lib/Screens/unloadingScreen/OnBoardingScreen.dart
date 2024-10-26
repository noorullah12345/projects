import 'package:flutter/material.dart';
import 'package:whatsapp_app/Screens/Widgets/UiHelper.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/images/newimage.jpg'),
            //Image.asset('assets/images/newimage.jpg'),
            const Image(image: AssetImage('assets/images/newimage.jpg')),

            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Welcome to Whatsapp",
                height: 20,
                color: Colors.black,
                fontweight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read out ', height: 14),
                SizedBox(
                  width: 4,
                ),
                UiHelper.CustomText(
                  text: "Privacy Policy",
                  height: 14,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 4,
                ),
                UiHelper.CustomText(
                    text: "Tap '' Agree to continue''", height: 14)
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the ", height: 14),
                UiHelper.CustomText(
                    text: "Teams and services ", height: 14, color: Colors.blue)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {},
        buttonName: 'Agree and continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
