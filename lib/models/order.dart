import 'package:bazarhama/models/cart.dart';

class OrderItem {
  OrderItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.dateTime,
  });
  final String id;
  final double amount;
  final List<Cart> products;
  final DateTime dateTime;
}
