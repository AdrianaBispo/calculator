import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  AppColor._();

  static AppColor get instance {
    _instance ??= AppColor._();
    return _instance!;
  }

  Color get primary => const Color(0xff2c0033);
  Color get secondary => const Color(0xfffecc45);
  Color get white => Colors.white;
}
