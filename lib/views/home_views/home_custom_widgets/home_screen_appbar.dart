import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37.sp,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 27.sp,
            width: 25.8.sp,
            child: Icon(
              Icons.menu_sharp,
              size: 26.sp,
              color: AppColors.greyTwo,
            ),
          ),
          SizedBox(
            width: 25.sp,
          ),
          SizedBox(
            height: 27.sp,
            width: 0.75.sw,
            child: TextFormField(
              cursorColor: AppColors.white,
              style: kSearchBarTextStyle,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: AppColors.greyThree,
                  size: 18.sp,
                ),
                hintText: AppStrings.homeScreenFirstText,
                hintStyle: kHomeScreenSearchBarText,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50.0.sp),
                ),
                filled: true,
                fillColor: AppColors.searchTextField,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
