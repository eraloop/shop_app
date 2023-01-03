import 'package:flutter/material.dart';

import "../providers/product.dart";
import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop App"),
        actions: <Widget>[
          PopupMenuButton(icon: Icon(Icons.more_vert), itemBuilder: (_) => [])
        ],
      ),
      body: const ProductGrid(),
    );
  }
}
