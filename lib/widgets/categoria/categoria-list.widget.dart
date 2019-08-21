import 'package:flutter/material.dart';
import 'package:shopping/widgets/categoria/categoria-item.widget.dart';

class CategoriaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // enviando o icone do item da categoria como parametro
          // la esta recebendo o IconData
          CategoriaItem(image: Icons.important_devices),
          CategoriaItem(image: Icons.insert_drive_file),
          CategoriaItem(image: Icons.keyboard),
          CategoriaItem(image: Icons.keyboard_voice),
        ],
      ),
    );
  }
}
