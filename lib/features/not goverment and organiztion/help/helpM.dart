import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class helpM extends StatefulWidget {
  const helpM({Key? key}) : super(key: key);

  @override
  State<helpM> createState() => _helpMState();
}

class _helpMState extends State<helpM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/مؤسسة-مصر-الخير.jpg', ctext: translation(context).misreLkhair, h: 'helpM', context: context),
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
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: translation(context).misreLkhairs,
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
                                      text: translation(context).hotline,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd'),
                                    ),
                                    TextSpan(
                                      text: '0226718895\n',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration:
                                          TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch("tel:// 0226718895");
                                        },
                                    ),
                                    TextSpan(
                                      text: translation(context).misreLkhairstreet,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontFamily: 'CairoBd',
                                          decoration:
                                          TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launchUrl(Uri.parse(
                                              'https://goo.gl/maps/gEN55mX7vpa26ieS7'));
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],),
                      )
                    ])))));
  }
}