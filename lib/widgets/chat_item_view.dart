
import 'package:flutter/material.dart';

// import custom class
import '../../utils/color_res.dart';


class ChatItemView extends StatelessWidget {
  const ChatItemView({super.key});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10, vertical: 2
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: colorRes.black,
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10
              ),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rajesh",
                        style: TextStyle(
                          fontSize: 18,
                          color: colorRes.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "message",
                        style: TextStyle(
                          fontSize: 14,
                          color: colorRes.grey
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
