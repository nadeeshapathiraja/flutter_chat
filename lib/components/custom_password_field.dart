import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    Key? key,
    required this.password,
  }) : super(key: key);

  final TextEditingController password;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.password,
      obscureText: _isObscure,
      style: const TextStyle(
        fontSize: 20,
        height: 1,
      ),
      decoration: InputDecoration(
        suffix: InkWell(
          onTap: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
          child: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
        ),
        // fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kBlack,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
