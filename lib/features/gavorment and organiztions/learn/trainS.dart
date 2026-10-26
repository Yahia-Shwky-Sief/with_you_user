import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class trainS extends StatefulWidget {
  const trainS({Key? key}) : super(key: key);


  @override
  State<trainS> createState() => _trainSState();
}

class _trainSState extends State<trainS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
                  fainl(image: 'images/gavorment and organiztions/Stars.jpg', ctext:translation(context).stars, h: 'trainS', context: context),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Stack(children: [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: translation(context).trainss,
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd'),
                                    ),
                                    TextSpan(
                                      text: translation(context).meansofcommunication,
                                      style: TextStyle(fontSize: 18.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd'),
                                    ),
                                    TextSpan(
                                      text: translation(context).information,
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd'),
                                    ),
                                    TextSpan(
                                      text: '01090686538\n',
                                      style:  TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration: TextDecoration.underline),
                                      recognizer:  TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel://01090686538");
                                        },
                                    ),
                                    TextSpan(
                                      text: translation(context).schoolsg,
                                      style: TextStyle(fontSize: 16.sp,
                                        color: Colors.white,
                                        fontFamily: 'CairoBd',
                                      ),
                                    ),
                                    TextSpan(
                                      text: '01033316644\n',
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel://01033316644");
                                        },
                                    ),
                                    TextSpan(
                                      text: translation(context).arabicenglishsomali,
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd'),
                                    ),
                                    TextSpan(
                                      text: '01033316655\n',
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel://01033316655");
                                        },
                                    ),
                                    TextSpan(
                                        text: translation(context).arabicenglishturkish,
                                        style: TextStyle(fontSize: 16.sp,
                                            color: Colors.white,
                                            fontFamily: 'CairoBd')
                                    ),
                                    TextSpan(
                                      text: '01033316677\n',
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel://01033316677");
                                        },
                                    ),
                                    TextSpan(
                                        text: translation(context).alllanguages,
                                        style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',)
                                    ),
                                    TextSpan(
                                      text: '01050227388\n',
                                      style: TextStyle(fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel://01050227388",
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ],),
                        ),
                      ),
                    ],
                    ),
                ),],),),),);
  }
}
