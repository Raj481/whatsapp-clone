
import 'package:flutter/material.dart';

// import custom class
import '../../utils/color_res.dart';
import '../../utils/image_res.dart';
import '../../utils/string_res.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

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
                    fontSize: 24,
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
                    Image(
                        height: 16,
                        width: 16,
                        image: AssetImage(
                            imageRes.kebab,
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
