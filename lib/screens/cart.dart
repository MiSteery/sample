import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sample/providers/cart.dart' show Cart;
// import 'package:sample/providers/order_detail.dart';
import 'package:sample/screens/checkout.dart';
import 'package:sample/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'Order Now',
                    ),
                    // onPressed: () {
                    //   Provider.of<OrderDetail>(context, listen: false).addOrder(
                    //     cart.items.values.toList(),
                    //     cart.totalAmount,
                    //   );
                    //   cart.clear();
                    // },
                    textColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length, //cart.itemCount,
              itemBuilder: (ctx, i) => CartItem(
                cart.items.values.toList()[i].id,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].title,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Checkout(),
    );
  }
}
