import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import "../providers/product.dart";
import '../widgets/product_grid.dart';
import '../providers/products.dart';

enum FilterOptions { Favorites, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showFavoritesOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop App"),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (_showFavoritesOnly) {
                    _showFavoritesOnly = true;
                  } else {
                    _showFavoritesOnly = false;
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      child: Text("Only Favorites"),
                      value: FilterOptions.Favorites,
                    ),
                    const PopupMenuItem(
                      child: Text("Show All"),
                      value: FilterOptions.All,
                    )
                  ])
        ],
      ),
      body: ProductGrid(_showFavoritesOnly),
    );
  }
}
