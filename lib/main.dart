import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/core/app.dart';
import 'package:state_app/features/state_home/application/theme_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyStateApp(),
    ),
  );
}
