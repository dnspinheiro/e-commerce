import 'package:flutter/material.dart';
import 'package:shopping/widgets/produto/produto-item.widget.dart';

class ProdutoList extends StatelessWidget {
  ProdutoList(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ProdutoItem(
              context: context,
              titulo: "Mi AirDots",
              marca: "Redmi",
              imagem: "assets/produto-1.png",
              preco: 150),
          ProdutoItem(
              context: context,
              titulo: "Redmi Note 7",
              marca: "Xiaomi",
              imagem: "assets/produto-1.png",
              preco: 1100),
          ProdutoItem(
              context: context,
              titulo: "Xiaomi Mi 9",
              marca: "Xiaomi",
              imagem: "assets/produto-1.png",
              preco: 1600),
          ProdutoItem(
              context: context,
              titulo: "Amazfit Bip",
              marca: "Xiaomi",
              imagem: "assets/produto-1.png",
              preco: 350),
        ],
      ),
    );
  }
}
