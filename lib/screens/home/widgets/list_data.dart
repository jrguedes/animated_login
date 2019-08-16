import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;

  ListData(
      {@required this.title,
      @required this.subtitle,
      @required this.image,
      @required this.margin});

  @override
  Widget build(BuildContext context) {
    return buildTaskContainer();
  }

  Container buildTaskContainer() {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.blueGrey[100], width: 1),
            bottom: BorderSide(color: Colors.blueGrey[100], width: 1),
          )),
      child: Row(
        children: <Widget>[
          buildCircularProfileContainer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildTitleText(),
              SizedBox(
                height: 5,
              ),
              buildSubtitleText()
            ],
          )
        ],
      ),
    );
  }

  Text buildSubtitleText() {
    return Text(
      subtitle,
      style: TextStyle(
          fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w300),
    );
  }

  Text buildTitleText() {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }

  Container buildCircularProfileContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: image),
      ),
    );
  }
}
