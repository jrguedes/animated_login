import 'package:animated_login/screens/home/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrowAnimation;

  HomeTop({@required this.containerGrowAnimation});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
      ),
      child: /*SafeArea Nao permite invadir a barra de status*/
          SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildWelcomeMessage(),
          buildCircleProfileContainer(),
          CategoryView()
        ],
      )),
    );
  }

  Text buildWelcomeMessage() {
    return Text(
      'Bem vindo, Júnior!',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
    );
  }

  Container buildCircleProfileContainer() {
    return Container(
      alignment: Alignment.topRight,
      width: containerGrowAnimation.value * 170,
      height: containerGrowAnimation.value * 170,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepOrangeAccent, width: 1),
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('images/perfil.jpg'), fit: BoxFit.cover),
      ),
      child: buildCircleNotificationContainer(),
    );
  }

  Container buildCircleNotificationContainer() {
    return Container(
      width: containerGrowAnimation.value * 40,
      height: containerGrowAnimation.value * 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color.fromRGBO(80, 210, 194, 0.8)),
      margin: EdgeInsets.only(left: 80),
      child: Center(
        child: Text(
          '7',
          style: TextStyle(
              fontSize: containerGrowAnimation.value * 17,
              fontWeight: FontWeight.w200,
              color: Colors.white70),
        ),
      ),
    );
  }
}
