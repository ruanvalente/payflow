import 'dart:html';

import 'package:flutter/material.dart';
import 'package:payflow/shared/model/user_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  var _isAutheticated = false;
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      saveUserCredentions(user);
      _user = user;
      _isAutheticated = true;

      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _isAutheticated = false;
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUserCredentions(UserModel user) async {
    final sharedPreferenceInstace = await SharedPreferences.getInstance();

    await sharedPreferenceInstace.setString('user', user.toJSON());

    return;
  }

  Future<void> hasCurrentUser(BuildContext context) async {
    final sharedPreferenceInstace = await SharedPreferences.getInstance();

    await Future.delayed(Duration(seconds: 3));

    if (sharedPreferenceInstace.containsKey('user')) {
      final userCurrent = sharedPreferenceInstace.get('user') as String;

      setUser(context, UserModel.fromJSON(userCurrent));

      return;
    } else {
      setUser(context, null);
    }
  }
}
