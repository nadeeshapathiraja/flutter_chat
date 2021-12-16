import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    this.height,
    this.width,
    required this.image,
  }) : super(key: key);

  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Constants.imageAssets(image),
        width: width,
        height: height,
      ),
    );
  }
}
