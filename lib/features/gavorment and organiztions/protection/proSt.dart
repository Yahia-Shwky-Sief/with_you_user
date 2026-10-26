import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class proSt extends StatefulWidget {
  const proSt({Key? key}) : super(key: key);


  @override
  State<proSt> createState() => _proStstate();
}

class _proStstate extends State<proSt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, h: 'protectionStars', context: context),
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
                        padding:   EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: translation(context).prost,
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
                                text: translation(context).arabicenglishturkish,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd'),
                              ),
                              TextSpan(
                                text: '01033348659\n',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01033348659");
                                  },
                              ),
                              TextSpan(
                                text: translation(context).arabicenglishsomali,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd'),
                              ),
                              TextSpan(
                                text: '01064400281',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01064400281");
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
