import 'package:flutter/material.dart';


class AppContents{

  //main app PageView() controller
  static PageController mainPageViewController = PageController(
    initialPage : 0,
  );

  //scalePageTransition method
  static PageRouteBuilder scalePageTransition({
    required Widget page,
  }){
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, animationTime, child){
        animation = CurvedAnimation(
            parent: animation, curve: Curves.easeInOut
        );
        return ScaleTransition(
          alignment: Alignment.centerRight,
          scale: animation,
          child: child,
        );
      },
      pageBuilder: (context, animation, animationTime) {
        return page;
      },
    );
  }
}