part of 'hero_local_bloc.dart';

@immutable
sealed class HeroLocalState {}

final class HeroLocalInitial extends HeroLocalState {}

final class HeroLocalDetailsState extends HeroLocalState {
  final HeroModel? hero;

  HeroLocalDetailsState(this.hero);
}
