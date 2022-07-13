import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_icons.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';
import 'package:music_app/views/app_drawer/app_drawer_custom_widgets/drawer_app_bar.dart';
import 'package:music_app/views/utils/gradient_icon.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: AppColors.themeBlack,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const DrawerAppBar(),
            SizedBox(height: 10.sp),
            Container(
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 20.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.paint,
                    size: 24.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 10.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerEighthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 25.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.scissors,
                    size: 18.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 15.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerNinthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 20.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.timer,
                    size: 22.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 18.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerTenthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 25.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: AppIcons.sound_bars,
                    size: 20.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 15.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerEleventhText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 25.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.drive_eta,
                    size: 22.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 15.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerTwelveText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 25.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.folder_copy,
                    size: 22.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 15.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerThirteenthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 40.5.sp,
              width: 1.sw,
              padding: EdgeInsets.only(left: 25.sp),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GradientIcon(
                    icon: Icons.scanner,
                    size: 22.0.sp,
                    gradient: kGradientTextStyle,
                  ),
                  SizedBox(
                    width: 15.0.sp,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        AppStrings.drawerFourteenthText,
                        style: kDrawerFirstText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.sp,
                right: 8.sp,
              ),
              child: Divider(
                color: AppColors.greySix,
                thickness: 1.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
