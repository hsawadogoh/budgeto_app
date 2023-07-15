// Event
import 'package:bloc/bloc.dart';

abstract class ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  final bool enableDarkTheme;
  ChangeThemeEvent({
    this.enableDarkTheme = false,
  });
}

// States
abstract class ThemeStates {}

class InitialThemeState extends ThemeStates {}

class ChangeThemeState extends ThemeStates {
  final bool enableDarkTheme;
  ChangeThemeState({
    required this.enableDarkTheme,
  });
}

// Bloc

class ThemeBloc extends Bloc<ThemeEvent, ThemeStates> {
  ThemeBloc() : super(InitialThemeState()) {
    on<ChangeThemeEvent>((event, emit) {
      emit(
        ChangeThemeState(enableDarkTheme: event.enableDarkTheme),
      );
    });
  }
}
