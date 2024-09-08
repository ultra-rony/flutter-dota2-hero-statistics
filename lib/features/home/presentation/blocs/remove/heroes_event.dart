part of 'heroes_bloc.dart';

@immutable
sealed class HeroesEvent {}

class HeroesFirstEvent extends HeroesEvent {}

class HeroesDetailsEvent extends HeroesEvent {
  final int index;

  HeroesDetailsEvent(this.index);
}