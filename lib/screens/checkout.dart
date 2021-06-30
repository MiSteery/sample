import 'dart:html';

import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Colors.white.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                return AlertDialog(
                    title: Text('checkout'),
                    content: Text('Thankyou'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'ok',
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'cancel',
                        ),
                      ),
                    ],
                    );
              },
              child: Text('Checkout', style: TextStyle(color: Colors.white)),
              color: Colors.blueGrey,
            ),
          ]),
    );
  }
}
