import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_in/themes/app_theme.dart';
import 'package:sign_in/themes/theme_model.dart';

import 'login.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
          builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          home: const LoginPage(),
          theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
          debugShowCheckedModeBanner: false,
        );
      })));
}
