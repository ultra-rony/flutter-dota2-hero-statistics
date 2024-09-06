import 'package:dota2_heroes/features/navigation/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const NavigationScreen();
      },
      routes: <RouteBase>[],
    ),
  ],
);
