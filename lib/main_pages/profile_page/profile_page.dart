import 'package:chat_app_flutter/authentication/login_page/login_page.dart';
import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/util_functions.dart';
import 'package:editable_image/editable_image.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: kwhite,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            width: size.width * 0.9,
            height: size.height * 0.6,
          ),
        ),
        Positioned(
          top: 10,
          left: size.width * 0.2,
          child: Column(
            children: [
              Container(
                width: size.width * 0.6,
                height: size.height * 0.2,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://image.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg"),
                  radius: 60.0,
                ),
              ),
              SizedBox(height: 10),
              CustomText(
                text: "Nadeesha Pathiraja",
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
              CustomButton(
                text: "Logout",
                ontap: () {
                  utilFunction.pushRemoveRoute(
                    context,
                    LoginPage(),
                  );
                },
                width: size.width * 0.5,
                height: 40,
              )
            ],
          ),
        ),
      ],
    );
  }
}
