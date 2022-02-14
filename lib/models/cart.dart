import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  Cart({
    Key? key,
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
  final String id;
  final String title;
  final int quantity;
  final double price;
}
