import 'package:flutter/material.dart';

class CategoriaItem extends StatelessWidget {
  final IconData image;
  CategoriaItem({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              offset: new Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: new Icon(image));
  }
}
