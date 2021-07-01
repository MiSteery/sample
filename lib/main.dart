import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sample/providers/cart.dart';
import 'package:sample/providers/order_detail.dart';
import 'package:sample/providers/products.dart';
import 'package:sample/screens/cart.dart';
import 'package:sample/screens/invoice.dart';
import 'package:sample/screens/product.dart';
import 'package:sample/screens/product_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrderDetail(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primaryColor: Colors.blueGrey, accentColor: Colors.cyan),
        home: ProductView(),
        routes: {
          ProductDetail.routeName: (ctx) => ProductDetail(),
          CartScreen.routeName: (ctx) => CartScreen(),
          Invoice.routeName: (ctx) => Invoice(),
          ProductView.routeName: (ctx) => ProductView(),
        },
      ),
    );
  }
}
