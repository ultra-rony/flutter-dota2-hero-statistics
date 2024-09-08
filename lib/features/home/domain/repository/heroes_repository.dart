import 'package:dota2_heroes/features/home/data/models/hero_model.dart';

import '../../../../core/resources/date_state.dart';

abstract class HeroesRepository {
  Future<DataState<List<HeroModel>>> getRemoteHeroes();

  Future<List<HeroModel>> getLocalHeroes();

  Future<HeroModel?> getLocalHero(int index);

  Future<void> clearLocalHeroesBox();

  Future<void> addAllLocalHeroesBox(List<HeroModel> heroes);
}
