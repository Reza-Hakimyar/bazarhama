import 'package:bazarhama/screens/order/order_screen.dart';
import 'package:flutter/material.dart';

class ProfileBodySection extends StatelessWidget {
  const ProfileBodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.attach_money_outlined),
              title: const Text('Account'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.shopping_bag_outlined),
              title: const Text('Orders'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(OrderScreen.routeName);
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.notifications_none),
              title: const Text('Notification'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Help Center'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: ListTile(
              leading: const Icon(Icons.exit_to_app_rounded),
              title: const Text('Sign Out'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
