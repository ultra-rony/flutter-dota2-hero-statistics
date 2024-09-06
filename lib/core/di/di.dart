import 'package:dota2_heroes/features/navigation/cubit/navigation_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Blocs

  // Cubit
  sl.registerFactory<NavigationCubit>(() => NavigationCubit());
}
