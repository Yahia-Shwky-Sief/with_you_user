import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class trainE extends StatefulWidget {
  const trainE({Key? key}) : super(key: key);

  @override
  State<trainE> createState() => _trainEState();
}

class _trainEState extends State<trainE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(children: [
                fainl(
                    image:
                        'images/gavorment and organiztions/refuge egypt.webp',
                    ctext: translation(context).egyptrefuge, h: 'trainE', context: context),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(30,
                            ),),
                            child:  Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: translation(context).traines,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd'),
                                        ),
                                        TextSpan(
                                          text:translation(context).meansofcommunication,
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
                                          text: '01018897429\n',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch("tel://01018897429");
                                            },
                                        ),
                                        TextSpan(
                                          text:
                                          translation(context).jobestreet,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://goo.gl/maps/E8Ym5anV17vdAt7y5'));
                                            },
                                        ),
                                        TextSpan(
                                            text: translation(context).jobetime,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd')),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
