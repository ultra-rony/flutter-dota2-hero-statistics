import 'package:dota2_heroes/features/settings/cubit/theme_cubit.dart';
import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Cubit
  sl.registerFactory<NavigationCubit>(() => NavigationCubit());
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());
  // Blocs
}
