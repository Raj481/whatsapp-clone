

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsup_clone/screens/routes.dart';
import 'package:whatsup_clone/utils/font_res.dart';
import 'package:whatsup_clone/utils/image_res.dart';
import 'package:whatsup_clone/utils/string_res.dart';

import '../../utils/color_res.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageRes.bg_1
              )
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top + 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringRes.welcomeToWhatsApp,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.headlineLarge!.color,
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: StringRes.tapAgreeAndContinue,
                              style: TextStyle(
                                color: Theme.of(context).buttonTheme.colorScheme!.secondary
                              ),
                              children: [
                                TextSpan(
                                    text: StringRes.whatsAppTermsOfService,
                                    style: TextStyle(
                                        color: Theme.of(context).buttonTheme.colorScheme!.onPrimary
                                    ),
                                ),
                              ]
                            ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Theme.of(context).buttonTheme.colorScheme!.onPrimary,
                      onPressed: () => Get.toNamed(Routes.home),
                      child: Text(
                        StringRes.acceptAndContinue.toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).buttonTheme.colorScheme!.primary,
                          fontFamily: FontRes.openSans,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
