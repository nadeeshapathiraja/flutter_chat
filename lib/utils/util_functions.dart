import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class utilFunction {
  //Navigation Function
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

//Go back Function
  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

//push and remove navagtor
  static void pushRemoveRoute(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }
}
