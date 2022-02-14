import 'package:flutter/material.dart';

import './/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'a1',
      title: 'iPhone 13 Max-Pro',
      description: 'Ferrari is my favorite car',
      imageUrl: 'assets/images/iphon.jpeg',
      price: 2324.99,
      hPrice: 3000.08,
    ),
    Product(
      id: 'a2',
      title: 'BMW',
      description: 'BMW is my favorite car',
      imageUrl: 'assets/images/car2.jpeg',
      price: 324434.99,
      hPrice: 5324353.08,
    ),
    Product(
      id: 'a3',
      title: 'very long name for this item',
      description: '1 is my favorite car',
      imageUrl: 'assets/images/mac2.jpeg',
      price: 32434.99,
      hPrice: 534353.08,
    ),
    Product(
      id: 'a4',
      title: 'Computer',
      description: 'Computer is my favorite tools',
      imageUrl: 'assets/images/pc.jpeg',
      price: 32434.99,
      hPrice: 534353.08,
    ),
    Product(
      id: 'a5',
      title: 'Brand Watch',
      description: 'Brand Watch is my favorite watch',
      imageUrl: 'assets/images/clock1.jpeg',
      price: 32434.99,
      hPrice: 534353.08,
      isFavorite: true,
    ),
    Product(
      id: 'a6',
      title: 'Computer',
      description: 'Computer is my favorite tools for developing and coding',
      imageUrl: 'assets/images/comput.jpeg',
      price: 32434.99,
      hPrice: 534353.08,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((e) => e.id == id);
  }
  //
  // void showFavoriteOnly() {
  //   showFavorite = true;
  //   notifyListeners();
  // }
  //
  // void showAll() {
  //   showFavorite = false;
  //   notifyListeners();
  // }
}
