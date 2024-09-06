import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocBuilder<ThemeCubit, bool>(
              bloc: context.read(),
              builder: (context, isDark) {
                return CupertinoSwitch(
                  value: isDark,
                  activeTrackColor: CupertinoColors.activeBlue,
                  onChanged: (bool value) {
                    context
                        .read<ThemeCubit>()
                        .onSelectedTheme(isDark ? false : true);
                  },
                );
              })),
    );
  }
}
