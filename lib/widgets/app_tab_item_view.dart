


import 'package:flutter/material.dart';

import '../utils/color_res.dart';

class AppTabItemView extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool? isActive;
  final Function()? onTap;
  const AppTabItemView({super.key,
    required this.icon,
    required this.text,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;

    return GestureDetector(
      onTap: onTap ?? (){},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8
            ),
            decoration: BoxDecoration(
                color: isActive! ? colorRes.greenAccent : colorRes.transparent,
                 borderRadius: BorderRadius.circular(20)
            ),
            child: Icon(
                icon,
              size: 18,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: colorRes.black,
              fontWeight: isActive! ? FontWeight.bold : FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
