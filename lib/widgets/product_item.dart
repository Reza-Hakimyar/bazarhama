import 'package:bazarhama/models/product.dart';
import 'package:bazarhama/providers/cart_provider.dart';
import 'package:bazarhama/screens/home/components/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../settings/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);
    final prod = Provider.of<Product>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: prod.id);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                border: Border.all(color: Colors.grey),
                image: DecorationImage(
                  image: AssetImage(prod.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GridTileBar(
            title: Text(prod.title, style: textStyle),
            subtitle: Text('\$${prod.price}', style: textStyle2),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer<Product>(
                  builder: (ctx, product, _) => IconButton(
                    onPressed: () {
                      product.toggleFavorite();
                    },
                    icon: Icon(product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border),
                    color: product.isFavorite ? Colors.red : iconColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    cart.addItem(prod.id, prod.price, prod.title);
                  },
                  icon: const Icon(Icons.add_shopping_cart),
                  color: iconColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
