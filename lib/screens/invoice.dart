import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:sample/providers/order_detail.dart' show OrderDetail;
import 'package:sample/screens/product.dart';
import 'package:sample/widget/order._item.dart';
class Invoice extends StatefulWidget {
  static const routeName = '/invoice';

  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<OrderDetail>(context);

    var size = MediaQuery.of(context).size;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Message'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Thankyou for shopping'),
                    Text('Have a good day :)'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('continue'),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProductView.routeName);
                  },
                ),
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invoice',
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        height: size.height * 0.2,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  _showMyDialog();
                },
                child: Text('Confirm', style: TextStyle(color: Colors.white)),
                color: Colors.blueGrey,
              ),
            ]),
      ),
    );
  }
}
