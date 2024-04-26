
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsup_clone/screens/home/home_controller.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../widgets/chat_item_view.dart';
import 'home_bottom_navigation_bar.dart';
import 'home_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;
    HomeController controller = Get.put(HomeController());

    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: colorRes.white,
        body: Stack(
          children: [

            Column(
              children: [
                GetBuilder(
                    init: controller,
                    builder: (_){
                      return HomeNavigationBar(
                        controller: controller,
                      );
                    }
                ),

                Flexible(
                  child: ListView.builder(
                    itemCount: 15,
                    physics: const BouncingScrollPhysics(),
                      itemBuilder: (_, index){
                        return const ChatItemView();
                      }
                  ),
                ),
                HomeBottomNavigationBar(
                  controller: controller,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
