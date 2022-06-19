import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_contents.dart';

import '../../controllers/cubits/app_page_view_cubit.dart';
import '../../models/constants/app_colors.dart';
import '../../models/constants/app_icons.dart';
import '../../models/constants/app_strings.dart';
import '../../models/constants/app_text_styles.dart';
import 'gradient_icon.dart';
import 'gradient_text.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppPageViewCubit, int>(
      builder: (context, pageIndex) {
        return Container(
          height: 67.sp,
          width: 1.sw,
          color: AppColors.blackOne,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 0,
                child: InkWell(
                  onTap: () {
                    context.read<AppPageViewCubit>().setIndexMainPageView(pageIndex: 0);
                    AppContents.mainPageViewController.animateToPage(
                      0,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 0,
                        child: GradientIcon(
                          icon: Icons.space_dashboard_rounded,
                          size: pageIndex == 0 ? 24.sp : 22.sp,
                          gradient: pageIndex == 0 ? kGradientIconStyle : kSimpleIconStyle,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: SizedBox(
                          height: 7.sp,
                        ),
                      ),
                      Expanded(
                          flex: 0,
                          child: GradientText(
                            AppStrings.firstText,
                            style: kBottomNavBarTextStyle,
                            gradient: pageIndex == 0 ? kGradientTextStyle : kSimpleTextStyle,
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: InkWell(
                  onTap: () {
                    context.read<AppPageViewCubit>().setIndexMainPageView(pageIndex: 1);
                    AppContents.mainPageViewController.animateToPage(
                      1,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 0,
                        child: GradientIcon(
                          icon: AppIcons.music,
                          size: pageIndex == 1 ? 24.sp : 22.sp,
                          gradient: pageIndex == 1 ? kGradientIconStyle : kSimpleIconStyle,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: SizedBox(
                          height: 7.sp,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: GradientText(
                          AppStrings.secondText,
                          style: kBottomNavBarTextStyle,
                          gradient: pageIndex == 1 ? kGradientTextStyle : kSimpleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: InkWell(
                  onTap: () {
                    context.read<AppPageViewCubit>().setIndexMainPageView(pageIndex: 2);
                    AppContents.mainPageViewController.animateToPage(
                      2,
                      duration: const Duration(
                        milliseconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 0,
                        child: GradientIcon(
                          icon: AppIcons.settings,
                          size: pageIndex == 2 ? 24.sp : 22.sp,
                          gradient: pageIndex == 2 ? kGradientIconStyle : kSimpleIconStyle,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: SizedBox(
                          height: 7.sp,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: GradientText(
                          AppStrings.thirdText,
                          style: kBottomNavBarTextStyle,
                          gradient: pageIndex == 2 ? kGradientTextStyle : kSimpleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
