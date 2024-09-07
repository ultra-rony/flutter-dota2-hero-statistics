part of 'heroes_bloc.dart';

@immutable
sealed class HeroesState extends Equatable {
  final List<HeroModel>? heroes;
  final String? error;

  const HeroesState({this.heroes, this.error});

  @override
  List<Object> get props => [heroes!, error!];
}

final class HeroesLoadingState extends HeroesState {}

final class HeroesSuccessState extends HeroesState {
  const HeroesSuccessState(List<HeroModel>? heroes) : super(heroes: heroes);
}

final class HeroesErrorState extends HeroesState {
  const HeroesErrorState(String error);
}
