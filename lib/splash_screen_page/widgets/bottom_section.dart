import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomSetion extends StatelessWidget {
  const BottomSetion({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: size.height / 5,
        decoration: BoxDecoration(
          color: kwhite.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: const [
            CustomText(
              text: "Welcome to Chat",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
      ),
    );
  }
}
