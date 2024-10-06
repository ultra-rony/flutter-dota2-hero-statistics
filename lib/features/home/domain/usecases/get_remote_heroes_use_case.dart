import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';

import '../../../../core/resources/date_state.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/models/hero_model.dart';

class GetRemoteHeroesUseCase
    implements UseCase<DataState<List<HeroModel>>, void> {
  GetRemoteHeroesUseCase(this._heroesRepository);

  final HeroesRepository _heroesRepository;

  @override
  Future<DataState<List<HeroModel>>> call({void params}) {
    return _heroesRepository.getRemoteHeroes();
  }
}
