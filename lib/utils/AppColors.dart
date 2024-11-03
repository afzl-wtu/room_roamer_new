import 'package:flutter/material.dart';

class AppColors {
  static Color getColorWith20Opacity(Color color) {
    return color.withOpacity(0.38);
  }

  static Color getColorWith20Opacity1(Color color) {
    return color.withOpacity(0.87);
  }

  static Color black = const Color(0xff222222);
  static Color Orange = const Color(0xffF8623A);
  static Color grey = const Color(0x0ff88888);
  //static Color light_grey = Color(0xffF5F5F5);
  static Color grey2 = const Color(0xff888888);
  static Color grey1 = const Color(0xff828282);
  static Color grey3 = const Color(0xff909090);
  static Color grey12 = const Color(0xffF7F7F7);
  static Color purple_color = const Color(0xff7109B6);
  static Color blue_purple = const Color(0xFF51459D);
  static Color purple_dark = const Color(0xFF51459D);
  static Color primary_pink = const Color(0xFFE75785);
  static Color border_clr = const Color(0xff0F0D23);
  static Color black1 = const Color(0xff000000);
  static Color yellow_color = const Color(0xffFEB700);
  static Color white_color = const Color(0xffFFFFFF);
  static Color black2 = Colors.black54;
  static LinearGradient linearGradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFF51459D), Color(0xFFE75785)],
  );
  static LinearGradient linearGradient2 = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFE75785), Color(0xFF51459D)],
  );

  static LinearGradient linearGradient_white = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xffF7F7F7), Color(0xffF7F7F7)],
  );
}
