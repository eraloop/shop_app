import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cart_item.dart';
import '../providers/cart.dart' show Cart;
import '../providers/orders.dart';

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
                          label: Text(
                              '\$${cart.totalAmount.toStringAsFixed(2)}',
                              style: const TextStyle(color: Colors.white)),
                          backgroundColor: Theme.of(context).primaryColor),
                      ElevatedButton(
                        onPressed: () {
                          Provider.of<Order>(context, listen: false).addOrder(
                              cart.items.values.toList(), cart.totalAmount);
                          cart.clear();
                        },
                        child: Text("ORDER NOW"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Theme.of(context).primaryColor,
                            elevation: 0),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: cart.itemCount > 0
                  ? ListView.builder(
                      itemCount: cart.itemCount,
                      itemBuilder: (BuildContext context, int i) => CartItem(
                          id: cart.items.values.toList()[i].id,
                          productId: cart.items.keys.toList()[i],
                          title: cart.items.values.toList()[i].title,
                          quantity: cart.items.values.toList()[i].quantity,
                          price: cart.items.values.toList()[i].price),
                    )
                  : const Center(child: Text('No items')),
            ),
          ],
        ));
  }
}
