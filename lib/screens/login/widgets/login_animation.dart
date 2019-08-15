import 'package:flutter/material.dart';

class LoginAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> buttonSqueezeAnimation;
  final Animation<double> buttonZoomOut;

  LoginAnimation({@required this.controller})
      : buttonSqueezeAnimation = Tween(begin: 400.0, end: 50.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        buttonZoomOut = Tween(begin: 50.0, end: 1000.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 1.0, curve: Curves.bounceOut)));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Hero(
            tag: 'fade',
            child: buttonZoomOut.value <= 50
                ? Container(
                    width: buttonSqueezeAnimation.value,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: _buildInside(context),
                  )
                : Container(
                    width: buttonZoomOut.value,
                    height: buttonZoomOut.value,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      /*shape: buttonZoomOut.value < 500
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      */
                      borderRadius: BorderRadius.all(
                          Radius.circular(buttonZoomOut.value < 500 ? 30 : 0)),
                    ),
                  ),
          )),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueezeAnimation.value > 75) {
      return Text(
        'Sign In',
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 2,
      );
    }
  }
}
