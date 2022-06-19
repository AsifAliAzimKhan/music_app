import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_contents.dart';
import 'package:music_app/models/constants/app_strings.dart';

import '../models/constants/app_images.dart';
import '../models/constants/app_text_styles.dart';
import 'app_main_pageview_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      setState(() {
        Navigator.push(
          context,
          AppContents.scalePageTransition(
            page: const AppMainPageViewScreen(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.themeBlack,
        body: Column(
          children: [
            Expanded(
              flex: 35,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppImages.logo,
                  height: 124.99.sp,
                  width: 113.49.sp,
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  AppStrings.splashScreenFirstText,
                  style: kSplashScreenFirstText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
