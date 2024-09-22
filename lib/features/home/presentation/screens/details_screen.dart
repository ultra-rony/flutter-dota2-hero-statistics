import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_heroes/features/home/presentation/blocs/local/hero_local_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../generated/l10n.dart';
import '../widgets/hero_details_content_widget.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  const DetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HeroLocalBloc>(context).add(HeroLocalDetailsEvent(index));
    return BlocBuilder<HeroLocalBloc, HeroLocalState>(
        bloc: context.read(),
        builder: (context, state) {
          if (state is HeroLocalDetailsState) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  const Expanded(child: SizedBox()),
                  CachedNetworkImage(
                    imageUrl: "$baseImageURL${state.hero!.icon!}",
                    fit: BoxFit.fitWidth,
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
              body: SingleChildScrollView(
                child: HeroDetailsContentWidget(hero: state.hero!),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Text(S.of(context).internet_error),
            ),
          );
        });
  }
}
