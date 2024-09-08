import 'package:bloc/bloc.dart';
import 'package:dota2_heroes/features/home/domain/usecases/get_local_hero_use_case.dart';
import 'package:meta/meta.dart';

import '../../../data/models/hero_model.dart';

part 'hero_local_event.dart';
part 'hero_local_state.dart';

class HeroLocalBloc extends Bloc<HeroLocalEvent, HeroLocalState> {

  final GetLocalHeroUseCase _getLocalHeroUseCase;

  HeroLocalBloc(this._getLocalHeroUseCase) : super(HeroLocalInitial()) {
    on<HeroLocalDetailsEvent>(onLocalHero);
  }

  onLocalHero(HeroLocalDetailsEvent event, Emitter<HeroLocalState> emit) async {
    final hero = await _getLocalHeroUseCase(params: event.index);
    emit(HeroLocalDetailsState(hero));
  }
}
