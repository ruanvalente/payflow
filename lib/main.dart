import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'package:payflow/screens/home.dart';
import 'package:payflow/modules/splash_screen.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: SplashScreen(),
    );
  }
}
