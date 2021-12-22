import 'package:chat_app_flutter/components/custom_image.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
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
    return ListView.builder(
      itemBuilder: (context, index) {
        return ChatTileSetion();
      },
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}

class ChatTileSetion extends StatelessWidget {
  const ChatTileSetion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Container(
        width: double.infinity,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000.0),
                child: Image.asset(
                  Constants.imageAssets("person.jpg"),
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Sumudu Sadakelum",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 5),
                      CustomText(
                        text: "Have a good one!",
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "2021-12-31",
                          fontSize: 13,
                        ),
                        CustomText(
                          text: "4.30 pm",
                          fontSize: 12,
                        )
                      ],
                    ),
                    Icon(
                      Icons.done_all,
                      color: kblue,
                      size: 14,
                    )
                  ],
                ),
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
