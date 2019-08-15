import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  final Animation<Color> fadeScreenAnimation;
  FadeContainer({@required this.fadeScreenAnimation});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fade',
      child: Container(
        decoration: BoxDecoration(
          color: fadeScreenAnimation.value
        ),
      ),
    );
  }
}
