import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_screen.dart';
import 'package:payflow/modules/login/login_screen.dart';

class AuthController {
  var _isAutheticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAutheticated = true;

      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _isAutheticated = false;
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
