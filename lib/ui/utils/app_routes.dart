import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/home.dart';

abstract final class AppRoutes {
  static homeRoute() => MaterialPageRoute(builder: (context) => HomeScreen());
}