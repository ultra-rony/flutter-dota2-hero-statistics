import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../bloc/heroes_bloc.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  const DetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HeroesBloc>(context).add(HeroesDetailsEvent(index));
    return BlocBuilder<HeroesBloc, HeroesState>(
        bloc: context.read(),
        builder: (context, state) {
          if (state is HeroesDetailsState) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text(index.toString()),
                centerTitle: true,
              ),
              body: Center(
                child: Text(state.hero!.localizedName!),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(index.toString()),
              centerTitle: true,
            ),
            body: Center(
              child: Text(S.of(context).internet_error),
            ),
          );
        });
  }
}
