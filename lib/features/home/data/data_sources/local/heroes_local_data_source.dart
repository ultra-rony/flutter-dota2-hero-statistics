import 'package:hive_flutter/hive_flutter.dart';

import '../../models/hero_model.dart';

class HeroesLocalDataSource {
  final Box<HeroModel> heroesBox;

  HeroesLocalDataSource(this.heroesBox);

  List<HeroModel> getHeroes() {
    return heroesBox.values.toList();
  }

  HeroModel? getHero(int index) {
    return heroesBox.getAt(index);
  }

  void addAllHeroes(List<HeroModel> heroes) {
    heroesBox.addAll(heroes);
  }

  void clear() {
    heroesBox.clear();
  }
}
