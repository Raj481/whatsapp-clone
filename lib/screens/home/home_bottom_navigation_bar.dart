
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsup_clone/utils/constants.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../../widgets/app_tab_item_view.dart';
import 'home_controller.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  final HomeController controller;
  const HomeBottomNavigationBar({
    super.key,
    required this.controller
  });

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
      child: GetBuilder(
        init: controller,
        builder: (_) {
          return Column(
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
                    isActive: controller.checkTab(TabEnum.chats),
                    onTap: () => controller.setTab(TabEnum.chats),
                  ),
                  AppTabItemView(
                    text: stringRes.updates,
                    icon: Icons.update,
                    isActive: controller.checkTab(TabEnum.updates),
                    onTap: () => controller.setTab(TabEnum.updates),
                  ),
                  AppTabItemView(
                    text: stringRes.communities,
                    icon: FontAwesomeIcons.peopleGroup,
                    isActive: controller.checkTab(TabEnum.communities),
                    onTap: () => controller.setTab(TabEnum.communities),
                  ),
                  AppTabItemView(
                    text: stringRes.calls,
                    icon: FontAwesomeIcons.phone,
                    isActive: controller.checkTab(TabEnum.calls),
                    onTap: () => controller.setTab(TabEnum.calls),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
