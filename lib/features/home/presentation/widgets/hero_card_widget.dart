import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/constants/constants.dart';
import '../../data/models/hero_model.dart';

class HeroCardWidget extends StatelessWidget {
  final HeroModel hero;

  const HeroCardWidget({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: CachedNetworkImage(
          imageUrl: "$baseImageURL${hero.img!}",
          fit: BoxFit.fitWidth,
        ));
  }
}
