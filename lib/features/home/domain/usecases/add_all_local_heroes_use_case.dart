
import '../../../../core/usecases/use_case.dart';
import '../../data/models/hero_model.dart';
import '../repository/heroes_repository.dart';

class AddAllLocalHeroesUseCase implements UseCase<void, List<HeroModel>> {
  AddAllLocalHeroesUseCase(this._heroesRepository);

  final HeroesRepository _heroesRepository;

  @override
  Future<void> call({void params}) {
    return _heroesRepository.addAllLocalHeroesBox(params as List<HeroModel>);
  }
}
