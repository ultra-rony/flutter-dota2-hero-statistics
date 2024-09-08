import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../data/models/hero_model.dart';
import 'hero_rank_widget.dart';

class HeroDetailsContentWidget extends StatelessWidget {
  final HeroModel hero;

  const HeroDetailsContentWidget({
    super.key,
    required this.hero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CachedNetworkImage(
                imageUrl: "$baseImageURL${hero.img!}",
                fit: BoxFit.fill,
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          _card("Name", hero.localizedName!),
          Text("Winrate"),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: HeroRankWidget(
                size: 50,
                win: hero.i8Win!,
                pick: hero.i8Pick!,
                assets: 'assets/rank_logo/rank8_0.png',
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: HeroRankWidget(
                size: 50,
                win: hero.i1Win!,
                pick: hero.i1Pick!,
                assets: 'assets/rank_logo/rank1_1.png',
              ),
            ),
          ),
          Text("About the hero"),
          _card("Primary attribute", hero.primaryAttr!.toString()),
          _card("Attack type", hero.attackType!),
          _card("Attack range", hero.attackRange!.toString()),
          _card("Roles", hero.roles!.join(", ")),
          _card("Base int", hero.baseInt!.toString()),
          _card("Base agi", hero.baseAgi!.toString()),
          _card("Base str", hero.baseStr!.toString()),
          _card("Move speed", hero.moveSpeed!.toString()),
          _card("Base health", hero.baseHealth!.toString()),
          _card("Base health regen", hero.baseHealthRegen!.toString()),
          _card("Base mana", hero.baseMana!.toString()),
          _card("Base mana regen", hero.baseManaRegen!.toString()),
          _card("Base armor", hero.baseArmor!.toString()),
        ],
      ),
    );
  }

  Widget _card(String desc, value) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text("$desc: "),
          Expanded(
              child: Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ))
        ],
      ),
    ));
  }
}
