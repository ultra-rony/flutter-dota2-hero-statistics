import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';

import '../../../../core/usecases/use_case.dart';
import '../../data/models/hero_model.dart';

class GetLocalHeroUseCase implements UseCase<HeroModel, int> {
  GetLocalHeroUseCase(this._heroesRepository);

  final HeroesRepository _heroesRepository;

  @override
  Future<HeroModel?> call({void params}) {
    return _heroesRepository.getLocalHero(params as int);
  }
}
