import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
            label: S.of(context).nav_menu_home,
          ),
          NavigationDestination(
            selectedIcon: const Icon(Icons.settings),
            icon: const Icon(Icons.settings_outlined),
            label: S.of(context).nav_menu_settings,
          ),
        ],
      ),
      body: <Widget>[
        const Scaffold(body: Center(child: Text("1"),)),
        const Scaffold(body: Center(child: Text("2"),)),
      ][currentPageIndex],
    );
  }
}