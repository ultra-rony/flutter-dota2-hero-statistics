import 'package:bloc/bloc.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import '../../../../core/resources/date_state.dart';
import '../../domain/usecases/add_all_local_heroes_use_case.dart';
import '../../domain/usecases/clear_local_heroes_use_case.dart';
import '../../domain/usecases/get_local_hero_use_case.dart';
import '../../domain/usecases/get_local_heroes_use_case.dart';
import '../../domain/usecases/get_remove_heroes_use_case.dart';

part 'heroes_event.dart';

part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  final GetRemoveHeroesUseCase _getRemoveHeroesUseCase;
  final Logger logger;
  final AddAllLocalHeroesUseCase _addAllLocalHeroesUseCase;
  final ClearLocalHeroesUseCase _clearLocalHeroesUseCase;
  final GetLocalHeroesUseCase _getLocalHeroesUseCase;
  final GetLocalHeroUseCase _getLocalHeroUseCase;

  HeroesBloc(
    this._getRemoveHeroesUseCase,
    this.logger,
    this._addAllLocalHeroesUseCase,
    this._clearLocalHeroesUseCase,
    this._getLocalHeroesUseCase,
    this._getLocalHeroUseCase,
  ) : super(HeroesLoadingState()) {
    on<HeroesFirstEvent>(onRemoveHeroes);
  }

  onRemoveHeroes(HeroesFirstEvent event, Emitter<HeroesState> emit) async {
    await _clearLocalHeroesUseCase.call();
    final dataStateRemote = await _getRemoveHeroesUseCase();

    if (dataStateRemote is DataSuccess && dataStateRemote.data!.isNotEmpty) {
      logger.d(dataStateRemote.data!);
      await _addAllLocalHeroesUseCase.call(params: dataStateRemote.data!);
      final heroes = await _getLocalHeroesUseCase.call();
      emit(HeroesSuccessState(heroes));
    }

    if (dataStateRemote is DataFailed) {
      emit(HeroesErrorState(dataStateRemote.error.toString()));
    }
  }
}
