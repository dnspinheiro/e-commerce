import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/categoria/categoria-list.widget.dart';
import 'package:shopping/widgets/produto/produto-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class CategoriaPage extends StatefulWidget {
  @override
  _CategoriaPageState createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Theme.of(context).accentColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              SearchBox(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Categorias",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoriaList(),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Mais vendidos",
                    style: TextStyle(fontSize: 30),
                  ),
                  FlatButton(
                    child: Text("Ver todos"),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 270,
                child: ProdutoList(context),
              ),
              SizedBox(
                height: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
