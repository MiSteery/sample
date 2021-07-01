import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sample/providers/cart.dart';
import 'package:sample/providers/order_detail.dart';
import 'package:sample/providers/product.dart';
import 'package:sample/screens/invoice.dart';
import 'package:sample/screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetail.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
              Provider.of<OrderDetail>(context, listen: false).addOrder(
                cart.items.values.toList(),
                cart.totalAmount,
              );
              cart.clear();
              Navigator.of(context).pushNamed(Invoice.routeName);
            },
            color: Colors.yellow,
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          subtitle: Text('\$${product.price}'),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
            },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
