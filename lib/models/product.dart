import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id, title, description, imageUrl;
  final double price, hPrice;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.hPrice,
    this.isFavorite = false,
  });
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
