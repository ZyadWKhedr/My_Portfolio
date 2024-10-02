import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatelessWidget {
  final ScrollController scrollController;

  const CustomNavigationDrawer({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              'Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: const Text('Hire Me'),
            onTap: () {
              scrollController.animateTo(
                0, // Adjust this offset as necessary
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              scrollController.animateTo(
                1 * 70.0, // Adjust this offset as necessary
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              scrollController.animateTo(
                5 * 70.0, // Adjust this offset as necessary
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
