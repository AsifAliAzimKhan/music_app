import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/constants/app_colors.dart';

class AppMainPageViewScreen extends StatelessWidget {
  const AppMainPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
      ),
    );
  }
}
