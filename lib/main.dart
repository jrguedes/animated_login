
import 'package:animated_login/screens/home/home_screen.dart';
import 'package:animated_login/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Login',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
