import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:state_app/features/state_home/application/theme_service.dart';

String checkTheme(BuildContext context) {
  final theme = Provider.of<ThemeService>(context);
  if (theme.isDarkModeOn) {
    return 'Switch to Day';
  } else {
    return 'Switch to Night';
  }
}

String letItBeThemeText(BuildContext context) {
  final theme = Provider.of<ThemeService>(context);

  if (theme.isDarkModeOn) {
    return 'Let it be sun ...';
  } else {
    return 'Let it be night ...';
  }
}
