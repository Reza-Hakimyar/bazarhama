import 'package:badges/badges.dart';
import 'package:bazarhama/providers/cart_provider.dart';
import 'package:bazarhama/screens/cart/cart_screen.dart';
import 'package:bazarhama/screens/favorite/favorite_screen.dart';
import 'package:bazarhama/screens/home/home_screen.dart';
import 'package:bazarhama/screens/profile/profile_screen.dart';
import 'package:bazarhama/screens/winner/winner_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const iconColor = Colors.white;
const textColor = TextStyle(color: Colors.white);

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    FavoritesScreen(showFavs: true),
    WinnerScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _pageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTap(int _selectIndex) {
    _pageController.jumpToPage(_selectIndex);
  }

  @override
  Widget build(BuildContext context) {
    final badgeCart = Provider.of<CartProvider>(context);
    return Scaffold(
      body: PageView(
        onPageChanged: _pageChanged,
        controller: _pageController,
        children: _screens,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: _onTap,
        currentIndex: _currentIndex,
        elevation: 10,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.stacked_line_chart_outlined), label: 'Winner'),
          BottomNavigationBarItem(
              icon: badgeCart.totalAmount == 0.0
                  ? const Icon(Icons.shopping_bag_outlined)
                  : Badge(
                      animationType: BadgeAnimationType.scale,
                      badgeColor: Colors.blue,
                      badgeContent: Text(
                        badgeCart.itemCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: const Icon(Icons.shopping_bag_outlined)),
              label: 'Cart'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
