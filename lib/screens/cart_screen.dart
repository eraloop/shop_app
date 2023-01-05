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
          title: const Text("Your Cart"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(15),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Total",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Spacer(),
                      Chip(
                          label: Text('\$${cart.totalAmount}',
                              style: const TextStyle(color: Colors.white)),
                          backgroundColor: Theme.of(context).primaryColor),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("ORDER NOW"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Theme.of(context).primaryColor,
                            elevation: 0),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
