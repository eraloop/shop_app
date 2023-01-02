import 'package:flutter/material.dart';

import "../models/product.dart";
import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shop App")),
      body: const ProductGrid(),
    );
  }
}


