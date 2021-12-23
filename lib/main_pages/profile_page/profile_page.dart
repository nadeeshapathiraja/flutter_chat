import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
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
            width: size.width * 0.9,
            height: size.height / 2,
            color: kgreen,
          ),
        ),
        Positioned(
          top: 40,
          left: size.width * 0.2,
          child: Container(
            width: size.width * 0.6,
            height: size.height * 0.2,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://image.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg"),
              radius: 60.0,
            ),
          ),
        ),
      ],
    );
  }
}
