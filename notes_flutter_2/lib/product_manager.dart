import 'package:flutter/material.dart';

class ProductManager extends StatelessWidget {
  final Function addProduct;

  ProductManager(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        // Applys the primary color of theme
        color: Theme.of(context).primaryColor,
        child: Text('Add Product'),
        onPressed: () {
          addProduct('sweets');
        },
      ),
    );
  }
}
