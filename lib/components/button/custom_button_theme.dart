import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opticash/app/app_colors.dart';

part 'custom_button_theme.freezed.dart';

@freezed
class CustomButtonTheme with _$CustomButtonTheme {
  const factory CustomButtonTheme.black({
    @Default(AppColors.deepBlack) Color buttonColor,
    @Default(AppColors.grey9E) Color foregroundColor,
    @Default(AppColors.grey) Color disabledBackgroundColor,
    @Default(AppColors.white) Color textColor,
    double? width,
    @Default(60) double height,
    @Default(false) bool disabled,
    @Default(16) double fontSize,
    @Default(FontWeight.w600) FontWeight fontWeight,
  }) = _Black;

  const factory CustomButtonTheme.green({
    @Default(AppColors.green) Color buttonColor,
    @Default(AppColors.grey9E) Color foregroundColor,
    @Default(AppColors.grey) Color disabledBackgroundColor,
    @Default(AppColors.white) Color textColor,
    double? width,
    @Default(60) double height,
    @Default(false) bool disabled,
    @Default(16) double fontSize,
    @Default(FontWeight.w600) FontWeight fontWeight,
  }) = _Green;

  const factory CustomButtonTheme.gradient({
    @Default(AppColors.green) Color buttonColor,
    @Default(AppColors.grey9E) Color foregroundColor,
    @Default(AppColors.grey) Color disabledBackgroundColor,
    @Default(AppColors.white) Color textColor,
    double? width,
    @Default(60) double height,
    @Default(false) bool disabled,
    @Default(16) double fontSize,
    @Default(
      LinearGradient(
        colors: [AppColors.greenA3, AppColors.greenDD],
        stops: [0.5, 1.0],
      ),
    )
    LinearGradient gradient,
    @Default(FontWeight.w600) FontWeight fontWeight,
  }) = _Gradient;
}
