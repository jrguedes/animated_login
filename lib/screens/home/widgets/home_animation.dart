import 'package:animated_login/screens/home/widgets/animated_listview.dart';
import 'package:animated_login/screens/home/widgets/fade_container.dart';
import 'package:animated_login/screens/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class HomeAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrowAnimation;
  final Animation<EdgeInsets> listSlidePositionAnimation;
  final Animation<Color> fadeScreenAnimation;

  HomeAnimation({@required this.controller})
      : containerGrowAnimation =
            CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePositionAnimation = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: Interval(0.325, 0.8, curve: Curves.ease))),
        fadeScreenAnimation = ColorTween(
                begin: Color.fromRGBO(247, 64, 106, 0.5),
                end: Color.fromRGBO(247, 64, 106, 0.0))
            .animate(CurvedAnimation(
                parent: controller, curve: Curves.fastOutSlowIn));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(animation: controller, builder: _buildAnimation),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrowAnimation: containerGrowAnimation,
            ),
            AnimatedListView(
              listSlidePositionAnimation: listSlidePositionAnimation,
            ),
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeScreenAnimation: fadeScreenAnimation,
          ),
        )
      ],
    );
  }
}
