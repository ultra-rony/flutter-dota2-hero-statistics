import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);

  void onSelectedTheme(bool isDark) {
    emit(isDark);
  }
}
