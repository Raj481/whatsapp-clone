
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_clone/widgets/chat_item_view.dart';

// import custom class
import '../../utils/color_res.dart';
import 'home_bottom_navigation_bar.dart';
import 'home_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: colorRes.white,
        body: Stack(
          children: [

            Column(
              children: [
                Positioned(
                    top: 0,
                    left: 0, right: 0,
                    child: HomeNavigationBar()
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
                Positioned(
                    bottom: 0,
                    left: 0, right: 0,
                    child: HomeBottomNavigationBar()
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
