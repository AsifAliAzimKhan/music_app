import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_colors.dart';
import 'package:music_app/models/constants/app_strings.dart';
import 'package:music_app/models/constants/app_text_styles.dart';

class PlaylistRecentBar extends StatelessWidget {
  final String? title;
  final String? viewAll;
  final void Function()? onTap;
  final double? width;

  const PlaylistRecentBar({
    super.key,
    required this.title,
    required this.viewAll,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.sp,
      width: 1.sw,
      padding: EdgeInsets.only(right: 20.sp),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: FittedBox(
              child: Text(
                title!,
                style: kHomeFirstTextStyle,
              ),
            ),
          ),
          SizedBox(
            width: width,
          ),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: onTap,
            child: Align(
              alignment: Alignment.centerRight,
              child: FittedBox(
                child: Text(
                  viewAll!,
                  style: kHomeViewAllText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
