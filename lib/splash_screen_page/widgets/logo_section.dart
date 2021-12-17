import 'package:animate_do/animate_do.dart';
import 'package:chat_app_flutter/components/custom_image.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pulse(
      duration: const Duration(seconds: 2),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: kwhite.withOpacity(0.9),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Roulette(
          delay: const Duration(seconds: 2),
          duration: const Duration(seconds: 3),
          child: const CustomImage(
            image: "logo.png",
            width: 130,
            height: 130,
          ),
        ),
      ),
    );
  }
}
