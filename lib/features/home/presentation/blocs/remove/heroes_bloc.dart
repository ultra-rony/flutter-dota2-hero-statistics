import 'package:bloc/bloc.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import '../../../../../core/resources/date_state.dart';
import '../../../domain/usecases/add_all_local_heroes_use_case.dart';
import '../../../domain/usecases/clear_local_heroes_use_case.dart';
import '../../../domain/usecases/get_local_hero_use_case.dart';
import '../../../domain/usecases/get_local_heroes_use_case.dart';
import '../../../domain/usecases/get_remove_heroes_use_case.dart';

part 'heroes_event.dart';

part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  final GetRemoveHeroesUseCase _getRemoveHeroesUseCase;
  final Logger _logger;
  final AddAllLocalHeroesUseCase _addAllLocalHeroesUseCase;
  final ClearLocalHeroesUseCase _clearLocalHeroesUseCase;
  final GetLocalHeroesUseCase _getLocalHeroesUseCase;
  final GetLocalHeroUseCase _getLocalHeroUseCase;

  HeroesBloc(
    this._getRemoveHeroesUseCase,
    this._logger,
    this._addAllLocalHeroesUseCase,
    this._clearLocalHeroesUseCase,
    this._getLocalHeroesUseCase,
    this._getLocalHeroUseCase,
  ) : super(HeroesLoadingState()) {
    on<HeroesFirstEvent>(onRemoveHeroes);
    on<HeroesDetailsEvent>(onLocalHero);
  }

  onRemoveHeroes(HeroesFirstEvent event, Emitter<HeroesState> emit) async {
    await _clearLocalHeroesUseCase.call();
    final dataStateRemote = await _getRemoveHeroesUseCase();

    if (dataStateRemote is DataSuccess && dataStateRemote.data!.isNotEmpty) {
      await _addAllLocalHeroesUseCase.call(params: dataStateRemote.data!);
      final heroes = await _getLocalHeroesUseCase.call();
      emit(HeroesSuccessState(heroes));
    }

    if (dataStateRemote is DataFailed) {
      emit(HeroesErrorState(dataStateRemote.error.toString()));
    }
  }

  onLocalHero(HeroesDetailsEvent event, Emitter<HeroesState> emit) async {
    final hero = await _getLocalHeroUseCase(params: event.index);
    emit(HeroesDetailsState(hero));
  }
}
