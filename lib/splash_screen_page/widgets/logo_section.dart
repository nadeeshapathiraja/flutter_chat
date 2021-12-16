import 'package:chat_app_flutter/components/custom_image.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(50),
      ),
      child: CustomImage(
        image: "logo.png",
        width: 130,
        height: 130,
      ),
    );
  }
}
