import 'package:dota2_heroes/features/home/data/models/hero_model.dart';

import '../../../../core/resources/date_state.dart';

abstract class DotaRepository {
  Future<DataState<List<HeroModel>>> getRemoteHeroes();
}