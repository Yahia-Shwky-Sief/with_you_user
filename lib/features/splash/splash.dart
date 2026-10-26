import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/auth/sign%20in.dart';
import '../../core/classes_widget/language_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        width: 70.w,
        height: 70.w,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Image.asset('images/signin/pw.png'),
          Text(translation(context).withyou,  style: TextStyle(fontSize: 32.sp, color: Theme.of(context).primaryColor, fontFamily: 'CairoBd'),)
        ],),
      ),
      nextScreen: signin(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      splashIconSize: 1000,
    );
  }
}