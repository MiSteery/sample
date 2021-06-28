// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Text(
//         'hey you',
//         style: TextStyle(color: Colors.blue),
//       ),
//     );
//   }
// }

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
      drawer: new Drawer(),
    );
  }
}
