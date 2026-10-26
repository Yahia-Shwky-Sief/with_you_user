import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class lawA extends StatefulWidget {
  const lawA({Key? key}) : super(key: key);


  @override
  State<lawA> createState() => _lawAState();
}

class _lawAState extends State<lawA> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/yXFZgon2CAnsXp9NlcNGJQC1xEGsZXb9HhW2mpTA.png', ctext: translation(context).adsero, h: 'lawA', context: context),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: translation(context).adseros,
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
                                text: '0227353203 \n',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                        launch("tel:// 0227353203");
                                  },
                              ),
                              TextSpan(
                                text: translation(context).adserostreet,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        'https://goo.gl/maps/V9crmFmKs3X2Bqno9'));
                                  },
                              ),
                            ],
                          ),
                        ),
                          ]),
                            ),
                          ),
                        ],),
                      )
                    ])))));
  }
}
