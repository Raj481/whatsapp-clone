
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/color_res.dart';
import '../../utils/font_res.dart';
import '../../utils/string_res.dart';
import '../chat/chat_screen.dart';
import '../status/status_screen.dart';
import 'widget/bottom_bar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: const BoxConstraints(
              minHeight: 45
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 15,
              bottom: 15
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: ColorRes.black.withOpacity(1),
                  offset: const Offset(1, 1),
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            StringRes.appName,
                            style: TextStyle(
                                color: Theme.of(context).textTheme.displayLarge!.color,
                                fontFamily: FontRes.openSans,
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.qr_code_scanner_rounded,
                              color: Theme.of(context).iconTheme.color,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Theme.of(context).iconTheme.color,
                                size: 24,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.search,
                              color: Theme.of(context).iconTheme.color,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                FontAwesomeIcons.ellipsisVertical,
                                color: Theme.of(context).iconTheme.color,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Flexible(
              child: IndexedStack(
                index: _index,
                children: const [
                  ChatScreen(),
                  StatusScreen(),
                  ChatScreen(),
                  ChatScreen(),
                ],
              )
          ),
          BottomBarView(
            index: _index,
            onPressed: (value ) {
              setState(() {
                _index = value;
              });
            },
          )
        ],
      ),
    );
  }
}
