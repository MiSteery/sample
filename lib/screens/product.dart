import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/providers/cart.dart';
import 'package:sample/screens/cart.dart';
import 'package:sample/widget/badge.dart';

import 'package:sample/widget/product_grid.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sample shop'),
        actions: <Widget>[
          Consumer<Cart>(
            builder: (_, cart, ch) =>
                Badge(child: ch, value: cart.itemCount.toString()),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                }),
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}
