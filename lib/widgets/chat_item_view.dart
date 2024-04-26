
import 'package:flutter/material.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';

class ChatItemView extends StatelessWidget {
  const ChatItemView({super.key});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;
    StringRes stringRes = StringRes.instance;
    ImageRes imageRes = ImageRes.instance;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15, vertical: 2
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: colorRes.black,
          ),
          const SizedBox(width: 10,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    "Rajesh",
                    style: TextStyle(
                      fontSize: 18,
                      color: colorRes.black
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "message",
                    style: TextStyle(
                      fontSize: 18,
                      color: colorRes.grey
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
