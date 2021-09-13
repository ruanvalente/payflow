import 'package:flutter/material.dart';

import 'shared/themes/app_colors.dart';

import 'modules/home/home_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/splash/splash_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: LoginScreen(),
      routes: {
        "/splash": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
      },
    );
  }
}
