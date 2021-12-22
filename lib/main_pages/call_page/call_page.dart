import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "Sumudu Sadakelum",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
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
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.call,
                              color: kblue,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 50),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.videocam,
                              color: kblue,
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
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
      ),
    );
  }
}
