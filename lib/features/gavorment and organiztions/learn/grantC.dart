import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class grantC extends StatefulWidget {
  const grantC({Key? key}) : super(key: key);

  @override
  State<grantC> createState() => _grantCState();
}

class _grantCState extends State<grantC> {
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
                  'images/gavorment and organiztions/خدمات الإغاثة الكاثوليكية.JPG',
              ctext: translation(context).catholic,
              h: 'GrantC',
              context: context),
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
                                text: translation(context).grantcs,
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
                                text: '01285003114',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01285003114");
                                  },
                              ),
                              TextSpan(
                                text: '/',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd'),
                              ),
                              TextSpan(
                                text: '01030499923\n',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01030499923");
                                  },
                              ),
                              TextSpan(
                                text: translation(context).grantcstreet,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        'https://goo.gl/maps/a44Fpbp4yW9qEXx2A'));
                                  },
                              ),
                              TextSpan(
                                  text: translation(context).grantctime,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontFamily: 'CairoBd')),
                              TextSpan(
                                text: translation(context).complaints,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd'),
                              ),
                              TextSpan(
                                text: '01000564747\n',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01000564747");
                                  },
                              ),
                              TextSpan(
                                  text: translation(context).complaintstime,
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
          )
        ])))));
  }
}
