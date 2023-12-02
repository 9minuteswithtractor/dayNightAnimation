import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/core/theme.dart';
import 'package:state_app/features/state_home/application/theme_service.dart';

import 'package:state_app/features/state_home/presentation/screens/state_home_screen.dart';
import 'package:state_app/features/theme_animation/presentation/screens/theme_animation_screen.dart';

class MyStateApp extends StatelessWidget {
  const MyStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        // title: 'ThisAppTitle',
        home: const StateHome(),
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const StateHome(),
          '/animation': (BuildContext context) => const ThemeAnimationScreen(),
        },
      );
    });
  }
}
