import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String marca;
  final double preco;

  ProdutoPage({this.imagem, this.titulo, this.marca, this.preco});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).accentColor.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 350.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: preco,
                  child: Image.asset(
                    imagem,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                titulo,
                style: TextStyle(
                    // color: Theme.of(context).accentColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "by " + marca,
                style: TextStyle(
                    // color: Theme.of(context).accentColor,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "\$ $preco",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Descrição",
                style: TextStyle(
                    // color: Theme.of(context).accentColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
