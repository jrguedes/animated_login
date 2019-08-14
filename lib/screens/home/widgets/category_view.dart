import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['TRABALHAR', 'ESTUDAR', 'CASA'];
  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            //se colocar IconButton usar disabledColor:
            onTap: () => _category > 0 ? selectBackward() : null,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          Text(
            '${categories[_category].toUpperCase()}',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
                fontSize: 18,
                color: Colors.white70),
          ),
          InkWell(
            onTap: () =>
                _category < categories.length - 1 ? selectForward() : null,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
