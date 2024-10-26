import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton(
      {required VoidCallback callback,
      required String buttonName,
      Color? backgroundColor = Colors.green}) {
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              )),
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Color(0XFF5E5E5E),
          fontWeight: fontweight),
    );
  }
}
