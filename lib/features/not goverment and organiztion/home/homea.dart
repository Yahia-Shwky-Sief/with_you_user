import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class homea extends StatefulWidget {
  const homea({Key? key}) : super(key: key);

  @override
  State<homea> createState() => _homeaState();
}

class _homeaState extends State<homea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/Capriole-Group-Egypt-45820-1578313426-og.png', ctext:  translation(context).arabteccontracting, h: 'homea', context: context,),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Stack(
                      children: [
                        Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: translation(context).arabteccontractings,
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd'),
                                                ),
                                                TextSpan(
                                                  text: translation(context).meansofcommunication,
                                                  style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd'),
                                                ),
                                                TextSpan(
                                                  text: translation(context).information,
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd'),
                                                ),
                                                TextSpan(
                                                  text: '4004 644 02\n',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd',
                                                      decoration:
                                                      TextDecoration.underline),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch("tel:// 4004 644 02");
                                                    },
                                                ),
                                                TextSpan(
                                                  text: translation(context).arabteccontractingstreet,
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd',
                                                      decoration:
                                                      TextDecoration.underline),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launchUrl(Uri.parse(
                                                          'https://goo.gl/maps/Ux5tYd8Ma3fc6BNb9'));
                                                    },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],)
                  )
                    ],
                        ),
                      )
            ))
    );
  }
}
