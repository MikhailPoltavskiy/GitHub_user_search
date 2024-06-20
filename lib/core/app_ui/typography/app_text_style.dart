import 'package:flutter/material.dart';
import 'package:github_user_search/core/app_ui/app_ui.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle _baseSFProStyle = TextStyle(
    // fontFamily: FontFamily.sFProDisplay,
    decoration: TextDecoration.none,
    height: 1.2,
    letterSpacing: 0,
    color: AppColors.black,
  );

  static final title = _baseSFProStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final subTitle = _baseSFProStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final text = _baseSFProStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );
}
