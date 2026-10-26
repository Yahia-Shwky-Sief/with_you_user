import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
class HospitalA extends StatefulWidget {
  const HospitalA({Key? key}) : super(key: key);

  @override
  State<HospitalA> createState() => _HospitalAState();
}

class _HospitalAState extends State<HospitalA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/American-Hosptial.jpg', ctext:  translation(context).americanhospital, h: 'hospitalA', context: context,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Stack(children: [
                          Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:  Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                                child: Column(
                                  children: [
                                    Center(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:translation(context).americanhospitals,
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
                                              text: '800 24392\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel:// 800 24392");
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).americanhospitalstreet,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launchUrl(Uri.parse(
                                                      'https://goo.gl/maps/dWdWMbPosTSYt5AT8'));
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
                        ],),
                      )
                    ])))));
  }
}