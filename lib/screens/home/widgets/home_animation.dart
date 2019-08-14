import 'package:animated_login/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class HomeAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrowAnimation;

  HomeAnimation({@required this.controller})
      : containerGrowAnimation =
            CurvedAnimation(parent: controller, curve: Curves.ease);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(animation: controller, builder: _buildAnimation),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(
          containerGrowAnimation: containerGrowAnimation,
        )
      ],
    );
  }
}
