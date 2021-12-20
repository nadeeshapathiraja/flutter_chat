import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.controller,
    this.lable,
  }) : super(key: key);

  final TextEditingController controller;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        fontSize: 20,
        height: 1,
      ),
      decoration: InputDecoration(
        labelText: lable,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kBlack,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
