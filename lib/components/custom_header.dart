import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.text,
    this.imgName = "header.png",
  }) : super(key: key);

  final String imgName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Constants.imageAssets(imgName),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                CustomText(
                  text: text,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: kwhite,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
