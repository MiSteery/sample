import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;

  ProductItem(
    this.id,
    this.title,
    this.price,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
          child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(title, textAlign: TextAlign.center),
          subtitle: Text('\$$price'),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
             
            },
             color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
