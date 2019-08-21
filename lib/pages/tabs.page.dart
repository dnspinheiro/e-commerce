import 'package:flutter/material.dart';
import 'package:shopping/pages/carrinho.page.dart';
import 'package:shopping/pages/categorias.page.dart';
import 'package:shopping/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [CategoriaPage(), CarrinhoPage(), LoginPage()],
      ),
      bottomNavigationBar: new TabBar(
        tabs: <Widget>[
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: new Icon(Icons.settings_applications),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
