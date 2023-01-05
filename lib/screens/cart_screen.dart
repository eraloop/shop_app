import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Cart"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        "Total",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Chip(
                          label: Text('\$${cart.totalAmount}'),
                          backgroundColor: Theme.of(context).primaryColor)
                    ],
                  )),
            ),
          ],
        ));
  }
}

class $ {}
