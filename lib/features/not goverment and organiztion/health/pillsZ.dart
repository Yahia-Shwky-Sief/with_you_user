import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pillsZ extends StatefulWidget {
  const pillsZ({Key? key}) : super(key: key);

  @override
  State<pillsZ> createState() => _pillsZSState();
}

class _pillsZSState extends State<pillsZ> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/images.png', ctext: translation(context).elezabypharmacies, h: 'pillsZ', context: context,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Stack(children: [
                          Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30,)
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
                                              text: translation(context).elezabypharmaciess,
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
                                              text: '19600\n',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launch("tel:// 19600");
                                                },
                                            ),
                                            TextSpan(
                                              text: translation(context).elezabypharmaciesstreet,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd',
                                                  decoration:
                                                  TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launchUrl(Uri.parse(
                                                      'https://goo.gl/maps/oivTreWbUKYcmNaq5'));
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
