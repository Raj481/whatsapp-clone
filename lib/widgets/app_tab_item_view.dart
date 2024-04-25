


import 'package:flutter/material.dart';

import '../utils/color_res.dart';

class AppTabItemView extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTabItemView({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
              icon
          ),
          const SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: colorRes.black
            ),
          )
        ],
      ),
    );
  }
}
