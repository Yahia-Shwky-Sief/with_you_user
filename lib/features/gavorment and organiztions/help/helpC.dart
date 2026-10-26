import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class helpC extends StatefulWidget {
  const helpC({Key? key}) : super(key: key);

  @override
  State<helpC> createState() => _helpCState();
}

class _helpCState extends State<helpC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/C.jpg', ctext: translation(context).caritasegypt, h: 'helpC', context: context),
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
                              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: translation(context).helpc,
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
                                          text: '15946\n',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch("tel://15946");
                                            },
                                        ),
                                        TextSpan(
                                          text:
                                          translation(context).sibawayh,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://goo.gl/maps/g2mPX7tgxdK1AP6c6'));
                                            },
                                        ),
                                        TextSpan(
                                            text:  translation(context).helpctime,
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
                        ],),
                      )
                    ])))));
  }
}