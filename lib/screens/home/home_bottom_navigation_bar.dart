
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/app_tab_item_view.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;
    StringRes stringRes = StringRes.instance;

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 15
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: colorRes.black.withOpacity(.1),
                offset: const Offset(-1, -1),
                blurRadius: 15,
                spreadRadius: .1
            )
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTabItemView(
                text: stringRes.chats,
                icon: Icons.chat,
              ),
              AppTabItemView(
                text: stringRes.updates,
                icon: Icons.update,
              ),
              AppTabItemView(
                text: stringRes.communities,
                icon: FontAwesomeIcons.peopleGroup,
              ),
              AppTabItemView(
                text: stringRes.calls,
                icon: FontAwesomeIcons.phone,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
