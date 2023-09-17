import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_store_app/configs/app_theme.dart';
import 'package:game_store_app/configs/constants/local_strings.dart';
import 'package:game_store_app/screens/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: LocalStrings.appName,
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
