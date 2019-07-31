import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    print('yah');
    return Column(
      children: [
        ...(products as List<String>)
            .map(
              (product) => Card(
                child: Column(
                  children: <Widget>[
                    // to get image:
                    // make assets folder
                    // go to pubspec.yaml
                    // uncomment 'assets'
                    // change file path for your image

                    // special image constructor
                    Image.asset('assets/food.jpg'),
                    Text(product),
                  ],
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
