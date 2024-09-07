import 'package:dio/dio.dart';
import 'package:dota2_heroes/features/home/data/data_sources/remove/heroes_api_service.dart';
import 'package:dota2_heroes/features/home/data/repository/heroes_repository_impl.dart';
import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';
import 'package:dota2_heroes/features/home/domain/usecases/get_remove_heroes_use_case.dart';
import 'package:dota2_heroes/features/home/presentation/bloc/heroes_bloc.dart';
import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  // Cubit
  sl.registerFactory<NavigationCubit>(() => NavigationCubit());
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());

  // Dependencies
  sl.registerSingleton<HeroesApiService>(HeroesApiService(sl()));
  sl.registerSingleton<HeroesRepository>(HeroesRepositoryImpl(sl()));
  //UseCases
  sl.registerSingleton<GetRemoveHeroesUseCase>(GetRemoveHeroesUseCase(sl()));
  // Blocs
  sl.registerFactory<HeroesBloc>(() => HeroesBloc(sl()));
}
