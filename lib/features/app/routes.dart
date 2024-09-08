import 'package:dota2_heroes/features/home/presentation/screens/details_screen.dart';
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
      routes: <RouteBase>[
        GoRoute(
            path: 'details/:index',
            name: 'details',
            builder: (context, state) {
              return DetailsScreen(
                index: int.parse(state.pathParameters['index'].toString()),
              );
            }),

      ],
    ),
  ],
);
