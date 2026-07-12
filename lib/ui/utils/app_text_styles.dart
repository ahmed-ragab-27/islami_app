import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract final class AppTextStyles {
  static const String _fontFamily = "Janna LT";

  static const TextStyle white16Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle black24Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle black16Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle black14Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle white20Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle white14Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle gold24Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.gold,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle gold20Bold = TextStyle(
    fontFamily: _fontFamily,
    color: AppColors.gold,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
