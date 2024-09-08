import 'package:dio/dio.dart';
import 'package:dota2_heroes/features/home/data/data_sources/local/heroes_local_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:dota2_heroes/features/home/data/data_sources/remove/heroes_api_service.dart';
import 'package:dota2_heroes/features/home/data/repository/heroes_repository_impl.dart';
import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';
import 'package:dota2_heroes/features/home/domain/usecases/get_remove_heroes_use_case.dart';
import 'package:dota2_heroes/features/home/presentation/bloc/heroes_bloc.dart';
import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';

import '../../features/home/data/models/hero_model.dart';
import '../constants/constants.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Hive
  await Hive.initFlutter((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(HeroModelAdapter());
  final box = await Hive.openBox<HeroModel>(HIVE_BOX_HEROES);

  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<Logger>(Logger());
  // Cubit
  sl.registerFactory<NavigationCubit>(() => NavigationCubit());
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());
  // Dependencies
  sl.registerSingleton<HeroesApiService>(HeroesApiService(sl()));
  sl.registerSingleton<HeroesRepository>(HeroesRepositoryImpl(sl(),sl()));
  sl.registerSingleton<HeroesLocalDataSource>(HeroesLocalDataSource(box));
  //UseCases
  sl.registerSingleton<GetRemoveHeroesUseCase>(GetRemoveHeroesUseCase(sl()));
  // Blocs
  sl.registerFactory<HeroesBloc>(() => HeroesBloc(sl(),sl()));
}
