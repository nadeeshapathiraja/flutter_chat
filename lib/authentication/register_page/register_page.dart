import 'package:chat_app_flutter/authentication/frogot_password_page/frogot_password.dart';
import 'package:chat_app_flutter/authentication/login_page/login_page.dart';
import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_header.dart';
import 'package:chat_app_flutter/components/custom_inputfield.dart';
import 'package:chat_app_flutter/components/custom_password_field.dart';
import 'package:chat_app_flutter/components/custom_phonenumber_input.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:chat_app_flutter/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();

  String initialCountry = 'LK';
  PhoneNumber number = PhoneNumber(isoCode: 'LK');
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderSection(
            text: "Sign Up",
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: "Enter Full Name",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    CustomInputField(controller: _fullName),
                    const SizedBox(height: 10),
                    const CustomText(
                      text: "Enter Email",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    CustomInputField(controller: _email),
                    const SizedBox(height: 10),
                    const CustomText(
                      text: "Enter Mobile Number",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    PhoneNumberInputSection(
                      number: number,
                      phoneNumberController: _phoneNumberController,
                    ),
                    const SizedBox(height: 10),
                    const CustomText(
                      text: "Enter Password",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    CustomPasswordField(password: password),
                    const SizedBox(height: 10),

                    const SizedBox(height: 10),
                    //login button
                    CustomButton(
                      text: "Sign Up",
                      ontap: () {
                        utilFunction.navigateTo(context, const LoginPage());
                      },
                      width: double.infinity,
                      height: 60,
                      fontSize: 20,
                      color: kblue,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const CustomText(text: "Already Registerd"),
                        InkWell(
                          child: const CustomText(
                            text: " Sign In here",
                            color: kblue,
                          ),
                          onTap: () {
                            utilFunction.navigateTo(
                                context, const RegisterPage());
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
