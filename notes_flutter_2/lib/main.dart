import 'package:flutter/material.dart';
import 'package:notes_flutter_2/product_manager.dart';
import 'package:notes_flutter_2/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //final int yay = 1;

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // initState: can get something defined in MyApp
  // constructor (statefulWidgets)
  // @override
  // void initState() {
  //widget.yay;
  //super.initState();
  //}

  List<String> _products = ['Food Tester'];

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My second app'),
        ),
        body: ListView(
          children: <Widget>[
            ProductManager(_addProduct),
            Products(_products), 
          ],
        ),
      ),
    );
  }
}
