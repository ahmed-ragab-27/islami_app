import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/splash/splash.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: AppColors.gold,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      home: SplashScreen(),
    );
  }
}
