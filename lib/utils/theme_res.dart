
import 'package:flutter/material.dart';

import 'color_res.dart';
import 'font_res.dart';

class ThemeRes {
  ThemeRes._();
  static ThemeRes of(){
    return ThemeRes._();
  }
  ThemeData get darkTheme => ThemeData(
    scaffoldBackgroundColor: ColorRes.primaryBlack,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 24
      ),
      headlineMedium: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 21
      ),
      headlineSmall: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 18
      ),

      displayMedium: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 18
      ),
      displayLarge: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 14
      ),
      displaySmall: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 12
      ),
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: ColorRes.mediumGreen,
        onPrimary: ColorRes.lightGreen,
        secondary: ColorRes.gray,
        onSecondary: ColorRes.mediumGray,
        error: ColorRes.white,
        onError: ColorRes.white,
        background: ColorRes.mediumBlack,
        onBackground: ColorRes.white,
        surface: ColorRes.white,
        onSurface: ColorRes.white
    ),
    buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: ColorRes.white,
            onPrimary: ColorRes.mediumGreen,
            secondary: ColorRes.mediumWhite,
            onSecondary: ColorRes.black,
            error: ColorRes.white,
            onError: ColorRes.white,
            background: ColorRes.white,
            onBackground: ColorRes.white,
            surface: ColorRes.white,
            onSurface: ColorRes.white
        )
    ),
  );
  ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: ColorRes.white.withOpacity(1),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: ColorRes.mediumGreen,
        fontFamily: FontRes.openSans,
        fontSize: 24
      ),
      headlineMedium: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 21
      ),
      headlineSmall: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 18
      ),

      displayMedium: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 18
      ),
      displayLarge: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 14
      ),
      displaySmall: TextStyle(
          color: ColorRes.mediumGreen,
          fontFamily: FontRes.openSans,
          fontSize: 12
      ),
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: ColorRes.mediumGreen,
        onPrimary: ColorRes.lightGreen,
        secondary: ColorRes.gray,
        onSecondary: ColorRes.mediumGray,
        error: ColorRes.white,
        onError: ColorRes.white,
        background: ColorRes.white,
        onBackground: ColorRes.white,
        surface: ColorRes.white,
        onSurface: ColorRes.white
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: ColorRes.white,
          onPrimary: ColorRes.mediumGreen,
          secondary: ColorRes.gray,
          onSecondary: ColorRes.black,
          error: ColorRes.white,
          onError: ColorRes.white,
          background: ColorRes.white,
          onBackground: ColorRes.white,
          surface: ColorRes.white,
          onSurface: ColorRes.white
      )
    ),
    iconTheme: IconThemeData(
      color: ColorRes.mediumGray
    )
  );

}