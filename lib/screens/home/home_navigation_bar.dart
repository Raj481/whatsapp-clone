
import 'package:flutter/material.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';
import 'home_controller.dart';

class HomeNavigationBar extends StatelessWidget {

  final HomeController controller;
  const HomeNavigationBar({
    super.key,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {

    ColorRes colorRes = ColorRes.instance;
    StringRes stringRes = StringRes.instance;
    ImageRes imageRes = ImageRes.instance;


    return Container(
      decoration: BoxDecoration(
        color: colorRes.white
      ),
      constraints: const BoxConstraints(
        minHeight: 60
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    stringRes.appName,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: colorRes.greenAccent
                  ),
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.qr_code_scanner_sharp,
                        color: colorRes.black,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: colorRes.black,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: colorRes.black,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    PopupMenuButton(
                        color: colorRes.white,
                        padding: EdgeInsets.zero,
                        elevation: 1,
                        shadowColor: colorRes.black.withOpacity(.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        position:  PopupMenuPosition.under,
                        itemBuilder: (_){
                          return controller.optionList.map(
                                  (e) => PopupMenuItem(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 10
                                    ),
                                      height: 35,
                                      child: Text(
                                        e,
                                        style: TextStyle(
                                            color: colorRes.black,
                                            fontSize: 21
                                        ),
                                      )
                                  )).toList();
                        },
                        child: Image(
                          height: 16,
                          width: 16,
                          image: AssetImage(
                            imageRes.kebab,
                          )
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: .1,
            thickness: .1,
            color: colorRes.grey,
          )
        ],
      ),
    );
  }
}
