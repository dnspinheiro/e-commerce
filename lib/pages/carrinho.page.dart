import 'package:flutter/material.dart';

class CarrinhoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: produtoList(context),
              color: Theme.of(context).accentColor,
            ),
          ),
          Container(
            height: 60,
            color: Theme.of(context).accentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                        style: Theme.of(context).textTheme.body1,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$ 400",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    child: Text(
                      "Realizar pedido",
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget produtoList(context) {
  return ListView(
    children: <Widget>[
      produtoItem(context, "Fone Xiaomi Mi Airdots", "assets/produto-1.png"),
      produtoItem(context, "Fone Xiaomi Mi Airdots", "assets/produto-1.png"),
      produtoItem(context, "Fone Xiaomi Mi Airdots", "assets/produto-1.png"),
      produtoItem(context, "Fone Xiaomi Mi Airdots", "assets/produto-1.png"),
      produtoItem(context, "Fone Xiaomi Mi Airdots", "assets/produto-1.png"),
    ],
  );
}

Widget produtoItem(context, name, image) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/produto-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Título"),
              Text(
                "\$ 200",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("1"),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
