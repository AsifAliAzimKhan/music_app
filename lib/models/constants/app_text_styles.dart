

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

final kSplashScreenFirstText = TextStyle(
  fontFamily: 'Circular',
  fontSize: 24.sp,
  fontWeight: FontWeight.w100,
  color: AppColors.white,
);

final kBottomNavBarTextStyle = TextStyle(
  fontFamily: 'Circular',
  color: AppColors.greyOne,
  fontSize: 10.sp,
);

const kSimpleIconStyle = LinearGradient(
  colors: [
    AppColors.greyOne,
    AppColors.greyOne,
  ],
);

const kGradientIconStyle = LinearGradient(
  colors: [
    AppColors.iconStartColor,
    AppColors.iconEndColor,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const kSimpleTextStyle = LinearGradient(
  colors: [
    AppColors.greyOne,
    AppColors.greyOne,
  ],
);

const kGradientTextStyle =  LinearGradient(
  colors: [
    AppColors.iconStartColor,
    AppColors.iconEndColor,
  ],
);
