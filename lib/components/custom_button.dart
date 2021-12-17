import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.borderRadius = 15,
    this.color,
    this.fontSize,
    this.height,
    this.width,
    required this.ontap,
  }) : super(key: key);

  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final double? fontSize;
  final double borderRadius;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
