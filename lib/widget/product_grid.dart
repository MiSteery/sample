import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sample/providers/products.dart';
import 'package:sample/widget/product_item.dart';

class ProductGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   final productData = Provider.of<Products>(context);
   final products = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 2,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].price,
        products[i].imageUrl,
      ),
    );
  }
}
