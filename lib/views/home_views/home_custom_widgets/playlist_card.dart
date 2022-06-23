


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_images.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.sp,
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(width: 20.sp),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 120.sp,
            width: 120.sp,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: 120.sp,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Image.asset(
                    AppImages.playlistImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      AppStrings.homeScreenEighthText,
                      style: kHomeHotRecommendedCardTittle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      AppStrings.homeScreenNinthText,
                      style: kHomeHotRecommendedCardSubtitle,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
