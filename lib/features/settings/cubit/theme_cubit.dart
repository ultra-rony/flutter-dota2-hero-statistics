import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(true);

  void onSelectedTheme(bool isDarkTheme) {
    emit(isDarkTheme);
  }
}
