import 'package:flutter/material.dart';
import 'package:shopping/widgets/animacao-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  bool menuOpened = false;
  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Text("Pesquisa"),
        AnimacaoInput(
          controller: controller,
        ),
        FlatButton(
          onPressed: () {
            !menuOpened ? controller.forward() : controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            semanticLabel: 'Mais',
          ),
        ),
      ],
    );
  }
}
