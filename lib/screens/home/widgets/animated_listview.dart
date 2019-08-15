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
            title: 'Estudar Flutter',
            subtitle: 'Com o curso do Daniel Ciolfi',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 7
        ),
        ListData(
            title: 'Estudar Flutter',
            subtitle: 'Com o curso do Daniel Ciolfi',
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 6
        ),
        ListData(
            title: 'Estudar Flutter', 
            subtitle: 'Com o curso do Daniel Ciolfi', 
            image: AssetImage('images/perfil.jpg'), 
            margin: listSlidePositionAnimation.value * 5
        ),
        ListData(
            title: 'NodeJS e MongoDB',
            subtitle: "Com o curso do Jorge Sant' Ana",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 4
        ),
        ListData(
            title: 'NodeJS e MongoDB',
            subtitle: "Com o curso do Jorge Sant' Ana",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 3
        ),
        ListData(
            title: 'NodeJS e MongoDB',
            subtitle: "Com o curso do Jorge Sant' Ana",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 2
        ),
        ListData(
            title: 'WEB com ES6, TypeScript e Angular',
            subtitle: "Com o curso do Jorge Sant' Ana",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 1
        ),
        ListData(
            title: 'WEB com ES6, TypeScript e Angular',
            subtitle: "Com o curso do Jorge Sant' Ana",
            image: AssetImage('images/perfil.jpg'),
            margin: listSlidePositionAnimation.value * 0
        )

      ],
    );
  }
}
