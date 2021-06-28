import 'package:flutter/material.dart';
import 'package:sample/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red.shade900
    ),
    home: Home(),
  ));
}