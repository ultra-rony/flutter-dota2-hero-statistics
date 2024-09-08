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
          _winRate('assets/rank_logo/rank8_0.png', hero.i8Win!, hero.i8Pick!),
          _winRate('assets/rank_logo/rank7_1.png', hero.i7Win!, hero.i7Pick!),
          _winRate('assets/rank_logo/rank6_1.png', hero.i6Win!, hero.i6Pick!),
          _winRate('assets/rank_logo/rank5_1.png', hero.i5Win!, hero.i5Pick!),
          _winRate('assets/rank_logo/rank4_1.png', hero.i4Win!, hero.i4Pick!),
          _winRate('assets/rank_logo/rank3_1.png', hero.i3Win!, hero.i3Pick!),
          _winRate('assets/rank_logo/rank2_1.png', hero.i2Win!, hero.i2Pick!),
          _winRate('assets/rank_logo/rank1_1.png', hero.i1Win!, hero.i1Pick!),
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

  Widget _winRate(String assets, int win, pick) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: HeroRankWidget(
          size: 50,
          win: win,
          pick: pick,
          assets: assets,
        ),
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
