import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_images.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 211.sp,
      width: 1.sw,
      color: AppColors.searchTextField,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 28.sp,
          ),
          SizedBox(
            height: 74.67.sp,
            width: 67.8.sp,
            child: Image.asset(
              AppImages.logo,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                AppStrings.splashScreenFirstText,
                style: kDrawerFirstText,
              ),
            ),
          ),
          SizedBox(
            height: 28.sp,
          ),
          Container(
            height: 40.sp,
            width: 200.sp,
            padding: EdgeInsets.only(
              left: 55.sp,
              right: 55.sp,
            ),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  height: 33.sp,
                  width: 42.sp,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerFirstText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerSecondText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25.sp,
                ),
                SizedBox(
                  height: 33.sp,
                  width: 42.sp,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerThirdText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerFourthText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25.sp,
                ),
                SizedBox(
                  height: 33.sp,
                  width: 42.sp,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerSixthText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            AppStrings.drawerSeventhText,
                            style: kDrawerAppBarTitleText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
