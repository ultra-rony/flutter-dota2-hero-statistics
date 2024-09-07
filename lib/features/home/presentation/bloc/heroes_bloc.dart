import 'package:bloc/bloc.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import '../../../../core/resources/date_state.dart';
import '../../domain/usecases/get_remove_heroes_use_case.dart';

part 'heroes_event.dart';

part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {
  final GetRemoveHeroesUseCase _getRemoveHeroesUseCase;
  final Logger logger;

  HeroesBloc(this._getRemoveHeroesUseCase, this.logger) : super(HeroesLoadingState()) {
    on<HeroesFirstEvent>(onRemoveHeroes);
  }

  onRemoveHeroes(HeroesFirstEvent event, Emitter<HeroesState> emit) async {
    final dataStateRemote = await _getRemoveHeroesUseCase();

    if (dataStateRemote is DataSuccess && dataStateRemote.data!.isNotEmpty) {
      logger.d(dataStateRemote.data!);
      emit(HeroesSuccessState(dataStateRemote.data!));
    }

    if (dataStateRemote is DataFailed) {
      emit(HeroesErrorState(dataStateRemote.error.toString()));
    }
  }
}
