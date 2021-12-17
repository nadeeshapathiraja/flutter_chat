import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_text_button.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
    required this.onNextTap,
    required this.onSkipTap,
  }) : super(key: key);

  final Function() onNextTap;
  final Function() onSkipTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            Constants.imageAssets("bottom.png"),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 50,
            right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Next Button
                CustomButton(
                  ontap: onNextTap,
                  text: "Next",
                  width: 120,
                  height: 50,
                  color: kwhite,
                  fontSize: 20,
                ),
                //Skip button
                CustomTextButton(
                  ontap: onSkipTap,
                  text: "Skip",
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
