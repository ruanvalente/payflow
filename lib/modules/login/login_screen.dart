// Core
import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_controller.dart';

// Themes
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/social_login_button/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              right: 0,
              left: 0,
              child: Image.asset(AppImages.person, width: 240, height: 300),
            ),
            Positioned(
              bottom: size.height * 0.01,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 40, right: 40, bottom: 60),
                    child: Text(
                      'Organize seus\nboletos em um\nsó lugar',
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SocialLoginButton(
                      onTap: () {
                        loginController.googleSignIn();
                      },
                      title: 'Entre como Google',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
