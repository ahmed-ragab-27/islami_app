import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/home.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/sura_dm.dart';
import 'package:islami_app/ui/screens/sura_details_screen/sura_details_screen.dart';

abstract final class AppRoutes {
  static homeRoute() => MaterialPageRoute(builder: (context) => HomeScreen());
  static suraDetails(SuraDm sura) => MaterialPageRoute(builder: (context) => SuraDetailsScreen(suraDm: sura));
}