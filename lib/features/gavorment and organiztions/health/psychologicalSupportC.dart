import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class psychologicalSupportC extends StatefulWidget {
  const psychologicalSupportC({Key? key}) : super(key: key);

  @override
  State<psychologicalSupportC> createState() => _psychologicalSupportState();
}

class _psychologicalSupportState extends State<psychologicalSupportC> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/C.jpg', ctext:translation(context).caritasegypt, h: 'psychologicalSupportC', context: context),
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
                                  Center(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: translation(context).psycs,
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
                                            text: translation(context).cairo,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 0129880223',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 0129880223");
                                              },
                                          ),
                                          TextSpan(
                                            text: ' / ',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 0129880884',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 0129880884");
                                              },
                                          ),
                                          TextSpan(
                                            text: ' / ',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '023867366\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 023867366");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).mohamed,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/U8K8Tbwy7JYLSSmX7'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).alex,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 01120076669\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01120076669");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).psychologicalSupportctime,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).damiette,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 01153727700\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01153727700");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).psychologicalSupportct,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                        ],
                                      ),
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