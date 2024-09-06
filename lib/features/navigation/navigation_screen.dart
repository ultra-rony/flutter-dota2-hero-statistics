import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(builder: (context, count) {
      return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            context.read<NavigationCubit>().onMenuSelectedIndex(index);
          },
          selectedIndex: context.read<NavigationCubit>().state,
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
          const Scaffold(
              body: Center(
            child: Text("1"),
          )),
          const Scaffold(
              body: Center(
            child: Text("2"),
          )),
        ][context.read<NavigationCubit>().state],
      );
    });
  }
}
