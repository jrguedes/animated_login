import 'package:animated_login/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePositionAnimation;

  AnimatedListView({@required this.listSlidePositionAnimation});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
            title: 'Study flutter',
            subtitle: '''I've found some tutorials to make cool things.''',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 7),
        ListData(
            title: 'Go to the gym',
            subtitle: '''Having good health''',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 6),
        ListData(
            title: 'Hung out with my friends',
            subtitle: 'On the Stanley Park',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 5),
        ListData(
            title: 'NodeJS and MongoDB',
            subtitle: 'Build a backend, REST API',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 4),
        ListData(
            title: 'Flutter and GraphQL',
            subtitle: '''Build an App with Flutter and Hasura GraphQL''',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 3),
        ListData(
            title: 'Go to the beach',
            subtitle: "English Bay",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 2),
        ListData(
            title: 'WEB with ES6, TypeScript and Angular',
            subtitle: "Making some adjustments",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 1),
        ListData(
            title: 'Fix the problem,  .Net Webservice',
            subtitle: "Some authentication problems",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 0)
      ],
    );
  }
}
