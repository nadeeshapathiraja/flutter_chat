import 'dart:ui';

import 'package:chat_app_flutter/components/custom_image.dart';
import 'package:chat_app_flutter/splash_screen_page/widgets/logo_section.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:chat_app_flutter/utils/util_functions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage(
              Constants.imageAssets("bg.jpg"),
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.blueAccent.withOpacity(0.1),
            child: SafeArea(
              child: Column(
                children: const [
                  SizedBox(height: 30),
                  LogoSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
