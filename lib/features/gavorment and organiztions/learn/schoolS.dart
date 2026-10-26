import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class schoolS extends StatefulWidget {
  const schoolS({Key? key}) : super(key: key);


  @override
  State<schoolS> createState() => _schoolSState();
}

class _schoolSState extends State<schoolS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, h: 'schoolS', context: context),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Container(
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                                  child: Column(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: translation(context).schoolss,
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
                                              text: translation(context).earlyeducation,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: '01033315544\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel://01033315544");
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).schoolsstreet,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launchUrl(Uri.parse(
                                                      'https://goo.gl/maps/prAutueNNiJFAKtv7'));
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).schoolsg,
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: '01033316644\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel://01033316644");
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).arabicenglishsomali,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: '01033316655\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel://01033316655");
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).arabicenglishturkish,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: '01033316677\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel://01033316677");
                                                },
                                            ), TextSpan(
                                              text: translation(context).alllanguages,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: '01050227388\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel://01050227388");
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],)
                          ],
                        ),
                      )
                    ])))));
  }
}
//Padding(
//                                 padding: EdgeInsets.fromLTRB(3.h, 1.h, 3.h, 1.h),
//                                 child: Column(
//                                   children: [
//                                     Center(
//                                       child: Text(
//
//                                         style: TextStyle(
//                                             fontSize: 16.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: double.infinity,
//                                       child: Text(
//                                         "وسائل التواصل",
//                                         style: TextStyle(
//                                             fontSize: 18.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                     Center(
//                                       child: Text(
//                                         """
//

//
//
//
// """,
//                                         style: TextStyle(
//                                             fontSize: 16.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )