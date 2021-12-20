import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: number,
      maxLength: 9,
      textStyle: const TextStyle(
        fontSize: 18,
        height: 1,
      ),
      textFieldController: phoneNumberController,
      formatInput: false,
      inputDecoration: InputDecoration(
        fillColor: Colors.white,
        hintText: "770000000",
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kBlack, width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
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
