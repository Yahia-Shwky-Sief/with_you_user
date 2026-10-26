import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';

import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class grantH extends StatefulWidget {
  const grantH({Key? key}) : super(key: key);


  @override
  State<grantH> createState() => _grantHState();
}

class _grantHState extends State<grantH> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/ImageHandler.png', ctext: translation(context).americanuniversity, h: 'grantH', context: context),
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
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: translation(context).harvards,
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
                                          text: translation(context).website,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://www.aucegypt.edu/inquiry'));
                                            },
                                        ),
                                        TextSpan(
                                          text: translation(context).americanuniversitystreet,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://goo.gl/maps/uUkmA7HMavFfvxks7'));
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],),
                      )
                    ])))));
  }
}