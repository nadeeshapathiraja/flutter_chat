import 'package:chat_app_flutter/components/custom_image.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000.0),
                child: Image.asset(
                  Constants.imageAssets("person.jpg"),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  CustomText(
                    text: "Sumudu Sadakelum",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "Have a good one!",
                    fontSize: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
