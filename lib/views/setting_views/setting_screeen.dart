import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_icons.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';
import 'package:music_app/views/setting_views/settings_custom_widgets/settings_screen_custom_appbar.dart';
import 'package:music_app/views/utils/gradient_icon.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.themeBlack,
        child: ListView(
          padding: EdgeInsets.only(
            left: 20.sp,
            bottom: 20.sp,
          ),
          children: [
            SizedBox(height: 15.sp),
            const SettingsScreenCustomAppBar(),
            SizedBox(height: 34.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.featured_play_list,
                    size: 24.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 25.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenFirstText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 57.sp,
                right: 20.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.multitrack_audio,
                    size: 24.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 25.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenSecondText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 57.sp,
                right: 20.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.headphones,
                    size: 20.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 28.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenThirdText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 57.sp,
                right: 20.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.padlock,
                    size: 20.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 28.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenFourthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 57.sp,
                right: 20.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.menu_open,
                    size: 26.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 20.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenFifthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 57.sp,
                right: 20.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 5.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.settings,
                    size: 20.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 28.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.settingsScreenSixthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
