import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../core/di/di.dart';
import '../../generated/l10n.dart';
import 'app_themes.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<NavigationCubit>(create: (context) => sl()),
          BlocProvider<ThemeCubit>(create: (context) => sl()),
        ],
        child: BlocBuilder<ThemeCubit, bool>(
            bloc: context.read(),
            builder: (context, isDark) {
              return MaterialApp.router(
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  routerConfig: router,
                  theme: isDark ? darkTheme : lightTheme,
                  debugShowCheckedModeBanner: false);
            }));
  }
}