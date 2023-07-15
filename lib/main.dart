import 'dart:developer';

import 'package:budget_app/bloc/theme.bloc.dart';
import 'package:budget_app/pages/bottom_nav_bar.dart';
import 'package:budget_app/pages/welcome.page.dart';
import 'package:budget_app/utilities/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeStates>(
        builder: (context, state) {
          late bool enableDarkTheme = false;
          if (state is ChangeThemeState) {
            enableDarkTheme = state.enableDarkTheme;
          }
          return MaterialApp(
            title: 'Budgeto App',
            debugShowCheckedModeBanner: false,
            theme: enableDarkTheme
                ? CustomThemes.darkTheme
                : CustomThemes.lightTheme,
            home: const WelcomePage(),
          );
        },
      ),
    );
  }
}
