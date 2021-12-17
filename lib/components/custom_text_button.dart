import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    required this.ontap,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontap,
        child: CustomText(
          text: text,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
