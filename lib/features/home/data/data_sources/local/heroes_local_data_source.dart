import 'package:hive_flutter/hive_flutter.dart';

import '../../models/hero_model.dart';

class HeroesLocalDataSource {
  final Box<HeroModel> heroesBox;

  HeroesLocalDataSource(this.heroesBox);
}
