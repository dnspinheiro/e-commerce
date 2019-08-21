import 'package:flutter/material.dart';
import 'package:shopping/pages/produto.page.dart';

class ProdutoItem extends StatelessWidget {
  final BuildContext context;
  final String imagem;
  final String titulo;
  final String marca;
  final double preco;
  ProdutoItem({this.context, this.imagem, this.titulo, this.marca, this.preco});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        width: 170,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdutoPage(
                        titulo: titulo,
                        marca: marca,
                        imagem: imagem,
                        preco: preco),
                  ),
                );
              },
              child: Hero(
                tag: preco,
                child: Image.asset(
                  imagem,
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              child: Text(
                titulo,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      marca,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "\$ $preco",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
