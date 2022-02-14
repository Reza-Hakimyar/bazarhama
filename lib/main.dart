import 'package:bazarhama/providers/cart_provider.dart';
import 'package:bazarhama/providers/order_provider.dart';
import 'package:bazarhama/settings/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/product_provider.dart';
import './screens/main_screen.dart';

void main() {
  runApp(const BazarHama());
}

class BazarHama extends StatelessWidget {
  const BazarHama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrderProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bazar Hama',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
        ),
        home: const MainScreen(),
        routes: routes,
      ),
    );
  }
}
