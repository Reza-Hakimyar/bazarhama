import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/product_provider.dart';
import '../../widgets/product_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key, required this.showFavs}) : super(key: key);
  final bool showFavs;
  @override
  Widget build(BuildContext context) {
    final loadPro = Provider.of<ProductProvider>(context);

    final products = showFavs ? loadPro.favoriteItems : loadPro.items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, int i) => ChangeNotifierProvider.value(
          value: products[i],
          child: const ProductItem(),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 14,
        ),
      ),
    );
  }
}
