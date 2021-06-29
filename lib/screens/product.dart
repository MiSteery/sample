import 'package:flutter/material.dart';

import 'package:sample/widget/product_grid.dart';

class ProductView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sample shop'),
      ),
      body: ProductGrid(),
    );
  }
}
