import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: Text('sample shop'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text(
                'Hey',
                style: TextStyle(color: Colors.white),
              ),
              automaticallyImplyLeading: false,
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
