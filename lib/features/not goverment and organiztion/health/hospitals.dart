import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
class Hospitals extends StatefulWidget {
  const Hospitals({Key? key}) : super(key: key);

  @override
  State<Hospitals> createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/garmin.jpeg', ctext:  translation(context).germansaudihospital, h: 'hospitals', context: context,),
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
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: translation(context).germansaudihospitals,
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
                                            text: translation(context).cairocountry,
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
                                            text: '16259\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 16259");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).germansaudistreet,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/Xv4dhqKBrjhBoBQ9A'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).dubaicountry,
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
                                            text: '800 2211\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 800 2211");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).germansaudistreetdubai,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://g.page/SaudiGermanHospitalDubai?share'));
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                          ),
                          ),],),
                      )
                    ])))));
  }
}