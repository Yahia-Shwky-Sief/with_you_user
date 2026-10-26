import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pillsS extends StatefulWidget {
  const pillsS({Key? key}) : super(key: key);

  @override
  State<pillsS> createState() => _pillsSState();
}

class _pillsSState extends State<pillsS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/signin/noimage.jpg', ctext: translation(context).bootspharmacies, h: 'pillsb', context: context,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
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
                                                  text: translation(context).bootspharmaciess,
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
                                                  text: '04 419 0176\n',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontFamily: 'CairoBd',
                                                      decoration:
                                                      TextDecoration.underline),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      launch("tel:// 04 419 0176");
                                                    },
                                                ),
                                                TextSpan(
                                                  text: translation(context).bootspharmaciesstreet,
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
                            ],)
                          ],
                        ),
                      )
                    ])))));
  }
}
