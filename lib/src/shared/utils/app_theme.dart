import 'package:flutter/material.dart';
//utils
import 'app_color.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
        
      scaffoldBackgroundColor: AppColor.instance.primary,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 60.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
