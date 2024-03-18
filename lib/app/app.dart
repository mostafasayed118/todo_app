import 'package:flutter/material.dart';
import 'package:todo_app/core/theme/theme.dart';
import 'package:todo_app/core/utils/app_assets.dart';
import 'package:todo_app/core/utils/app_strings.dart';
import 'package:todo_app/features/auth/presentiation/screens/splash_screen/splash_screen.dart';

import '../core/utils/app_colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      darkTheme: getAppDarkTheme(),
      themeMode: ThemeMode.light,
      title: AppString.appName,
      home: const SplashScreen(),
    );
  }
}
