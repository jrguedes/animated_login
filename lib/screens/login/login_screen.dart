import 'package:animated_login/screens/home/home_screen.dart';
import 'package:animated_login/screens/login/widgets/form_container.dart';
import 'package:animated_login/screens/login/widgets/login_animation.dart';
import 'package:animated_login/screens/login/widgets/login_logo.dart';
import 'package:animated_login/screens/login/widgets/signup_button.dart';
import 'package:animated_login/screens/standard_widgets/animated_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    LoginLogo(),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
                //LoginAnimation(controller: _animationController.view),
                AnimatedLoginButton(
                    controller: _animationController,
                    buttonText: 'Sign In',
                    buttonColor: Color.fromRGBO(247, 64, 106, 1.0),
                    textColor: Colors.white,
                    fadeTag: 'fade'
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
