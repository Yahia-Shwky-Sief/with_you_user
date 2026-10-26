import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class proE extends StatefulWidget {
  const proE({Key? key}) : super(key: key);


  @override
  State<proE> createState() => _proEState();
}

class _proEState extends State<proE> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/efrr.png', ctext: translation(context).egyptianfoundationforrefugees, h: 'proEF', context: context),
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
                                text: translation(context).pros,
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
                                text: '0225751118',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://0225751118");
                                  },
                              ),
                              TextSpan(
                                text: ' / ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                ),
                              ),
                              TextSpan(
                                text: '01272020938\n',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration:
                                    TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch("tel://01272020938");
                                  },
                              ),
                              TextSpan(
                                text: translation(context).proestreet,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd',
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl(Uri.parse(
                                        'https://goo.gl/maps/RD4jukFyrFsRkwG69'));
                                  },
                              ),
                              TextSpan(
                                text: translation(context).proetime,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontFamily: 'CairoBd'),
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
