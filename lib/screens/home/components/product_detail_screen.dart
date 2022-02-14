import 'package:bazarhama/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  const ProductDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)?.settings.arguments as String;
    final prod = Provider.of<ProductProvider>(context, listen: false)
        .findById(productID);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(prod.title),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              prod.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Price: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: '\$${prod.price}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ])),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Market Price: ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: '\$${prod.hPrice}',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(prod.description),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.green,
              ),
              label: Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
