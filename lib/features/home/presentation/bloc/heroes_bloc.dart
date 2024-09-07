import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'heroes_event.dart';
part 'heroes_state.dart';

class HeroesBloc extends Bloc<HeroesEvent, HeroesState> {

  HeroesBloc() : super(HeroesInitial()) {
    on<HeroesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
