import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';

import '../../../../core/usecases/use_case.dart';
import '../../data/models/hero_model.dart';

class GetLocalHeroesUseCase implements UseCase<List<HeroModel>, void> {
  GetLocalHeroesUseCase(this._heroesRepository);

  final HeroesRepository _heroesRepository;

  @override
  Future<List<HeroModel>> call({void params}) {
    return _heroesRepository.getLocalHeroes();
  }
}
