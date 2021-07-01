import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;

import 'package:sample/providers/order_detail.dart' show OrderDetail;
import 'package:sample/widget/order._item.dart';


class Invoice extends StatelessWidget {
 static const routeName ='/invoice';
  @override
  Widget build(BuildContext context) {
      final orderData = Provider.of<OrderDetail>(context);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Invoice'),
    //   ),

      // drawer: AppDrawer(),
      // body: ListView.builder(
      //   itemCount: orderData.orders.length,
      //   itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      // ),

    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice', textAlign:TextAlign.center ,),
        automaticallyImplyLeading: false,
      ),
      
      body:ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
);
       
      
    
  }
}