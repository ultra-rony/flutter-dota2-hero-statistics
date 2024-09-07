import 'package:cached_network_image/cached_network_image.dart';
import 'package:dota2_heroes/features/home/presentation/widgets/hero_rank_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../data/models/hero_model.dart';

class HeroCardWidget extends StatelessWidget {
  final HeroModel hero;

  const HeroCardWidget({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Expanded(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: "$baseImageURL${hero.img!}",
              fit: BoxFit.fitWidth,
            ),
            HeroRankWidget(
              win: hero.i8Win!,
              pick: hero.i8Pick!,
              assets: 'assets/rank_logo/rank8_0.png',
            ),
            HeroRankWidget(
              win: hero.i1Win!,
              pick: hero.i1Pick!,
              assets: 'assets/rank_logo/rank1_1.png',
            ),
          ],
        ),
      ),
    );
  }
}
