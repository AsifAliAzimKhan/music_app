import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';
import 'package:music_app/views/utils/app_properties.dart';

class SettingsScreenCustomAppBar extends StatelessWidget {
  const SettingsScreenCustomAppBar({Key? key}) : super(key: key);

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
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              AppProperties.scaffoldKey.currentState?.openDrawer();
            },
            child: SizedBox(
              height: 27.sp,
              width: 25.8.sp,
              child: Icon(
                Icons.menu_sharp,
                size: 30.sp,
                color: AppColors.greyTwo,
              ),
            ),
          ),
          SizedBox(
            width: 25.sp,
          ),
          Container(
            height: 27.sp,
            width: 0.75.sw,
            alignment: Alignment.center,
            child: FittedBox(
              child: Text(
                AppStrings.settingsScreenTittle,
                style: kSettingScreenTitleTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
