import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/constants/app_contents.dart';
import 'package:music_app/views/home_views/home_screens.dart';
import 'package:music_app/views/app_drawer/app_drawer.dart';
import 'package:music_app/views/setting_views/setting_screeen.dart';
import 'package:music_app/views/utils/app_properties.dart';
import 'package:music_app/views/utils/bottom_navigation_bar.dart';

import '../controllers/cubits/app_page_view_cubit.dart';
import '../models/constants/app_colors.dart';

class AppMainPageViewScreen extends StatelessWidget {
  const AppMainPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AppPageViewCubit, int>(
        builder: (context, pageIndex) {
          return Scaffold(
            key: AppProperties.scaffoldKey,
            drawerScrimColor: Colors.transparent,
            drawer: const AppDrawer(),
            drawerEnableOpenDragGesture: true,
            backgroundColor: AppColors.white,
            bottomNavigationBar: const BottomNavBar(),
            body: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: PageView(
                  controller: AppContents.mainPageViewController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const HomeScreen(),
                    Container(
                      height: 1.sh,
                      width: 1.sw,
                      color: Colors.grey[100],
                      child: Center(
                        child: Text(
                          'Songs Screen',
                        ),
                      ),
                    ),
                    const SettingsScreen(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
