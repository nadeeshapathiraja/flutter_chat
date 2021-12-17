import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class SliderItems extends StatelessWidget {
  const SliderItems({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Constants.imageAssets(img),
        ),
      ],
    );
  }
}
