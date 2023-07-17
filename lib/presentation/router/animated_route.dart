import 'package:flutter/cupertino.dart';

class SlideRight extends PageRouteBuilder {
  final Widget page;
  SlideRight({required this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,

          // this returned is Responsible for animation
          transitionsBuilder: (context, animation, animationTwo, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
