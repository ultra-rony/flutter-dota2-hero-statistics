part of 'hero_local_bloc.dart';

@immutable
sealed class HeroLocalEvent {}

class HeroLocalDetailsEvent extends HeroLocalEvent {
  final int index;

  HeroLocalDetailsEvent(this.index);
}
