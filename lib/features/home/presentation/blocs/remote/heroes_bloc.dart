import 'package:bloc/bloc.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import '../../../../../core/resources/date_state.dart';
import '../../../domain/usecases/add_all_local_heroes_use_case.dart';
import '../../../domain/usecases/clear_local_heroes_use_case.dart';
import '../../../domain/usecases/get_local_heroes_use_case.dart';
import '../../../domain/usecases/get_remote_heroes_use_case.dart';

part 'heroes_event.dart';

part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  final GetRemoteHeroesUseCase _remoteHeroesUseCase;
  final Logger _logger;
  final AddAllLocalHeroesUseCase _addAllLocalHeroesUseCase;
  final ClearLocalHeroesUseCase _clearLocalHeroesUseCase;
  final GetLocalHeroesUseCase _getLocalHeroesUseCase;

  HeroesBloc(
    this._remoteHeroesUseCase,
    this._logger,
    this._addAllLocalHeroesUseCase,
    this._clearLocalHeroesUseCase,
    this._getLocalHeroesUseCase,
  ) : super(HeroesLoadingState()) {
    on<HeroesFirstEvent>(onRemoveHeroes);
  }

  onRemoveHeroes(HeroesFirstEvent event, Emitter<HeroesState> emit) async {
    await _clearLocalHeroesUseCase.call();
    final dataStateRemote = await _remoteHeroesUseCase();

    if (dataStateRemote is DataSuccess && dataStateRemote.data!.isNotEmpty) {
      await _addAllLocalHeroesUseCase.call(params: dataStateRemote.data!);
      final heroes = await _getLocalHeroesUseCase.call();
      emit(HeroesSuccessState(heroes));
    }

    if (dataStateRemote is DataFailed) {
      emit(HeroesErrorState(dataStateRemote.error.toString()));
    }
  }
}
