import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/resources/ColorsManager.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: ColorsManager.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),

    dividerTheme: DividerThemeData(color: ColorsManager.white, thickness: 1),

    tabBarTheme: TabBarThemeData(
      labelColor: ColorsManager.black,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: ColorsManager.black,
      ),
      unselectedLabelColor: ColorsManager.black,
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black,
      ),
      dividerHeight: 0,
      indicatorColor: ColorsManager.black,
    ),

    colorScheme: ColorScheme.light(
      primary: ColorsManager.white,
      onPrimary: ColorsManager.black,
      onSecondary: ColorsManager.gray,
      onPrimaryContainer: ColorsManager.white,
      onTertiary: ColorsManager.black,
    ),

    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
        color: ColorsManager.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
        color: ColorsManager.white,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        color: ColorsManager.white,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorsManager.black,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: ColorsManager.black,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: ColorsManager.gray,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ColorsManager.white,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),

    dividerTheme: DividerThemeData(color: ColorsManager.white, thickness: 1),

    tabBarTheme: TabBarThemeData(
      labelColor: ColorsManager.white,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: ColorsManager.white,
      ),
      unselectedLabelColor: ColorsManager.white,
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      dividerHeight: 0,
      indicatorColor: ColorsManager.white,
    ),

    colorScheme: ColorScheme.dark(
      primary: ColorsManager.black,
      onPrimary: ColorsManager.white,
      onSecondary: ColorsManager.gray,
      onPrimaryContainer: ColorsManager.white,
      onTertiary: ColorsManager.black,
    ),

    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
        color: ColorsManager.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
        color: ColorsManager.white,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
        color: ColorsManager.white,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: ColorsManager.white,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: ColorsManager.gray,
      ),
    ),
  );
}
