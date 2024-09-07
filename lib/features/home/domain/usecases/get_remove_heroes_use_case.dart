import 'package:dota2_heroes/features/home/domain/repository/dota_repository.dart';

import '../../../../core/resources/date_state.dart';
import '../../../../core/usecases/use_case.dart';
import '../../data/models/hero_model.dart';

class GetRemoveHeroesUseCase
    implements UseCase<DataState<List<HeroModel>>, void> {
  GetRemoveHeroesUseCase(this._dotaRepository);

  final DotaRepository _dotaRepository;

  @override
  Future<DataState<List<HeroModel>>> call({void params}) {
    return _dotaRepository.getRemoteHeroes();
  }
}
