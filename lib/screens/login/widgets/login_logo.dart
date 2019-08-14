import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70, bottom: 32),
      child: Image.asset(
        'images/tickicon.png',
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      ),
    );
  }
}