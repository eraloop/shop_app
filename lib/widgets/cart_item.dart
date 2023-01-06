import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  const CartItem(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Text('\$$price'),
          ),
          subtitle: Text('Total: \$${price * quantity}'),
          trailing: Text('$quantity  x'),
        ),
      ),
    );
  }
}
