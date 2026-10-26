import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class grantA extends StatefulWidget {
  const grantA({Key? key}) : super(key: key);


  @override
  State<grantA> createState() => _grantAState();
}

class _grantAState extends State<grantA> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/not goverment and organiztion/18450215-37c1-4dc4-86af-55455f304be1.jpg', ctext: translation(context).ainshams, h: 'grantA', context: context),
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
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: translation(context).ainshamss,
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
                                          text: '00226831231\n',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch("tel://00226831231");
                                            },
                                        ),
                                        TextSpan(
                                          text: translation(context).ainshamsstreet,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://goo.gl/maps/dAAtQuVjSkKszeu98'));
                                            },
                                        ),
                                      ],
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
//Padding(
//                                 padding: EdgeInsets.fromLTRB(3.h, 1.h, 3.h, 1.h),
//                                 child: Column(
//                                   children: [
//                                     Center(
//                                       child: Text(
//
//                                         style: TextStyle(
//                                             fontSize: 16.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: double.infinity,
//                                       child: Text(
//                                         "وسائل التواصل",
//                                         style: TextStyle(
//                                             fontSize: 18.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                     Center(
//                                       child: Text(
//                                         """
//

//
//
//
// """,
//                                         style: TextStyle(
//                                             fontSize: 16.sp,
//                                             color: Colors.white,
//                                             fontFamily: 'CairoBd'),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )