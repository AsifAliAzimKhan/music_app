import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';
import 'package:music_app/views/utils/gradient_icon.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class RecentlyPlayedCard extends StatelessWidget {
  const RecentlyPlayedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246.5.sp,
      width: 1.sw,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: 20.sp,
              left: 50.sp,
            ),
            child: Divider(
              color: AppColors.greySix,
              thickness: 1.sp,
            ),
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 47.5.sp,
            width: 1.sw,
            // color: Colors.red,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 47.5.sp,
                  width: 22.sp,
                  // color: Colors.green,
                  child: GradientIcon(
                    icon: Icons.play_circle_outlined,
                    size: 23.sp,
                    gradient: kGradientIconStyle,
                  ),
                ),
                SizedBox(
                  width: 20.sp,
                ),
                SizedBox(
                  width: 238.sp,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: 10.sp,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppStrings.homeScreenTenthText,
                          style: kHomeHotRecommendedCardTittle,
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
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
                ),
                SizedBox(
                    width: 68.75.sp,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: 12.sp,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.favorite_border,
                            color: AppColors.orangeColor,
                            size: 12.0.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: RatingStars(
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                              size: 12.0.sp,
                            ),
                            starCount: 5,
                            starSize: 12.0.sp,
                            maxValue: 5,
                            starSpacing: 1.sp,
                            maxValueVisibility: false,
                            valueLabelVisibility: false,
                            starOffColor: AppColors.ratingStarColor,
                            starColor: Colors.yellow,
                            // valueLabelColor: const Color(0xff9b9b9b),
                            // valueLabelTextStyle:  TextStyle(
                            //   color: Colors.yellow,
                            //   fontWeight: FontWeight.w400,
                            //   fontStyle: FontStyle.normal,
                            //   fontSize: 12.0.sp,
                            // ),
                            // valueLabelRadius: 10,
                            //animationDuration: const Duration(milliseconds: 1000),
                            // valueLabelPadding:
                            // const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                            // valueLabelMargin: const EdgeInsets.only(right: 8),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
