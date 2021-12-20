import 'package:chat_app_flutter/authentication/frogot_password_page/frogot_password.dart';
import 'package:chat_app_flutter/authentication/register_page/register_page.dart';
import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_header.dart';
import 'package:chat_app_flutter/components/custom_password_field.dart';
import 'package:chat_app_flutter/components/custom_phonenumber_input.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/main_pages/call_page/call_page.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  String initialCountry = 'LK';
  PhoneNumber number = PhoneNumber(isoCode: 'LK');
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const HeaderSection(
            text: "Sign In",
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
                      text: "Enter Mobile Number",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 20),
                    PhoneNumberInputSection(
                      number: number,
                      phoneNumberController: phoneNumberController,
                    ),
                    const SizedBox(height: 30),
                    const CustomText(
                      text: "Enter Password",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 20),
                    CustomPasswordField(password: password),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const CustomText(text: "Frogot Your Password"),
                        InkWell(
                          child: const CustomText(
                            text: " Click here..",
                            color: kblue,
                          ),
                          onTap: () {
                            utilFunction.navigateTo(
                                context, const FrogotPassword());
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    //login button
                    CustomButton(
                      text: "Sign In",
                      ontap: () {
                        utilFunction.navigateTo(context, const CallPage());
                      },
                      width: double.infinity,
                      height: 60,
                      fontSize: 20,
                      color: kblue,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const CustomText(text: "New User"),
                        InkWell(
                          child: const CustomText(
                            text: " Register Now",
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
