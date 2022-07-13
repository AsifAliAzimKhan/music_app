import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';
import 'package:music_app/views/home_views/home_custom_widgets/home_screen_appbar.dart';
import 'package:music_app/views/home_views/home_custom_widgets/hot_recommended_card.dart';
import 'package:music_app/views/home_views/home_custom_widgets/playlist_bar.dart';
import 'package:music_app/views/home_views/home_custom_widgets/playlist_card.dart';
import 'package:music_app/views/home_views/home_custom_widgets/recently_played_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 15.sp,
          ),
          const HomeScreenAppBar(),
          SizedBox(
            height: 34.sp,
          ),
          SizedBox(
            height: 0.77.sh,
            width: 1.sw,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      AppStrings.homeScreenSecondText,
                      style: kHomeFirstTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                const HotRecommendedCard(),
                SizedBox(
                  height: 10.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.sp),
                  child: Divider(
                    color: AppColors.greySix,
                    thickness: 1.sp,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                PlaylistRecentBar(
                  title: AppStrings.homeScreenFifthText,
                  viewAll: AppStrings.homeScreenSixText,
                  width: 0.65.sw,
                  onTap: () {
                    debugPrint('View All PlayList Button');
                  },
                ),
                SizedBox(
                  height: 10.sp,
                ),
                const PlaylistCard(),
                SizedBox(
                  height: 10.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.sp),
                  child: Divider(
                    color: AppColors.greySix,
                    thickness: 1.sp,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                PlaylistRecentBar(
                  title: AppStrings.homeScreenSeventhText,
                  viewAll: AppStrings.homeScreenSixText,
                  width: 0.49.sw,
                  onTap: () {
                    debugPrint('View All Recently Played Button');
                  },
                ),
                SizedBox(
                  height: 10.sp,
                ),
                const RecentlyPlayedCard(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
