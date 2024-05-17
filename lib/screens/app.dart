
// import necessary package
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import custom class
import '../utils/theme_res.dart';
import 'routes.dart';
import 'welcome/welcome_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeRes.of().lightTheme,
      onGenerateRoute: Routes.generateRoute,
      home: const WelcomeScreen(),
    );
  }
}
