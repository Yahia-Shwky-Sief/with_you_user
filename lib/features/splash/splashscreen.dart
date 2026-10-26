import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import '../home.dart';

class loadingScreen extends StatelessWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Positioned(
            right: 0,
            child: SpinKitCubeGrid(
              size: 100.h,
              duration: const Duration(milliseconds: 1400),
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      nextScreen: home(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: Theme.of(context).primaryColor,
      duration: 2000,
      splashIconSize: 10000,
    );
  }
}