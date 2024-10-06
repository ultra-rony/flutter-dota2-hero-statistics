import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:dota2_heroes/features/settings/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeCubit, bool>(
          bloc: context.read(),
          builder: (context, isDarkTheme) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CardWidget(
                        text:
                            "${S.of(context).change_theme} ${isDarkTheme ? S.of(context).light_theme : S.of(context).dark_theme}",
                        widget: CupertinoSwitch(
                          value: isDarkTheme,
                          onChanged: (bool value) {
                            context
                                .read<ThemeCubit>()
                                .onSelectedTheme(isDarkTheme ? false : true);
                          },
                        )),
                    CardWidget(
                        text: S.of(context).support,
                        widget: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.message))),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
