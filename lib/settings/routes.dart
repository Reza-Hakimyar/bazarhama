import 'package:bazarhama/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/home/components/product_detail_screen.dart';
import '../screens/order/order_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (ctx) => const HomeScreen(),
  ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
  CartScreen.routeName: (ctx) => const CartScreen(),
  OrderScreen.routeName: (ctx) => const OrderScreen(),
};
