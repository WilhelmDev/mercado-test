import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryOrange = Color(0xFFFFA726);
  static const Color purpleButton = Color(0xFF862373);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color borderColor = Color(0xFFE8E8E8);
  static const Color textPrimary = Color(0xFF2D3748);
  static const Color textSecondary = Color(0xFF718096);
  static const Color textTertiary = Color(0xFF5B5B5B);
  static const Color borderPurple = Color(0xFF470133);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primaryOrange,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryOrange,
        foregroundColor: AppColors.textPrimary,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: AppColors.textPrimary),
        bodyMedium: TextStyle(color: AppColors.textSecondary),
        bodySmall: TextStyle(color: AppColors.textTertiary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.purpleButton,
          foregroundColor: Colors.white,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.purpleButton,
          side: BorderSide(color: AppColors.borderColor),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryOrange),
        ),
        labelStyle: TextStyle(color: AppColors.textSecondary),
      ),
    );
  }
}