import '../../../../core/usecases/use_case.dart';
import '../repository/heroes_repository.dart';

class ClearLocalHeroesUseCase implements UseCase<void, void> {
  ClearLocalHeroesUseCase(this._heroesRepository);

  final HeroesRepository _heroesRepository;

  @override
  Future<void> call({void params}) {
    return _heroesRepository.clearLocalHeroesBox();
  }
}
