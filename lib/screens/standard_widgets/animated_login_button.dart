import 'package:flutter/material.dart';

class AnimatedLoginButton extends StatelessWidget {
  final AnimationController controller;
  final String buttonText;
  final String fadeTag;
  final Color buttonColor;
  final Color textColor;

  final Animation<double> buttonSqueezeAnimation;
  final Animation<double> buttonZoomOut;

  AnimatedLoginButton(
      {@required this.controller,
      @required this.buttonText,
      @required this.buttonColor,
      @required this.textColor,
      @required this.fadeTag})
      : buttonSqueezeAnimation =
            Tween(begin: 400.0, end: 50.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        buttonZoomOut = Tween(begin: 50.0, end: 1000.0)
            .animate(CurvedAnimation(parent: controller, curve: Interval(0.5, 1.0, curve: Curves.bounceOut)));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 50,
        left: buttonSqueezeAnimation.value == 400 ? 10 : 0,
        right: buttonSqueezeAnimation.value == 400 ? 10 : 0,
      ),
      child: InkWell(
          onTap: () {
            controller.forward();
          },
          child: Hero(
            tag: fadeTag,
            child: buttonZoomOut.value <= 50
                ? Container(
                    width: buttonSqueezeAnimation.value,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: _buildInside(context),
                  )
                : Container(
                    width: buttonZoomOut.value,
                    height: buttonZoomOut.value,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(buttonZoomOut.value < 500 ? 30 : 0)),
                    ),
                  ),
          )),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueezeAnimation.value > 75) {
      return Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w300, letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 2,
      );
    }
  }
}
