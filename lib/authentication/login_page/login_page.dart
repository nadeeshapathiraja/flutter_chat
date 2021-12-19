import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/constants.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Constants.imageAssets("header.png"),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Enter Phone Number",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                PhoneNumberInputSection(
                  number: number,
                  phoneNumberController: phoneNumberController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneNumberInputSection extends StatelessWidget {
  const PhoneNumberInputSection({
    Key? key,
    required this.number,
    required this.phoneNumberController,
  }) : super(key: key);

  final PhoneNumber number;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: TextStyle(color: Colors.black),
      initialValue: number,
      maxLength: 9,
      textFieldController: phoneNumberController,
      formatInput: false,
      hintText: "770000000",
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
      inputBorder: const OutlineInputBorder(),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    );
  }
}
