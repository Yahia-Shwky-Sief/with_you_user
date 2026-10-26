import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class grantE extends StatefulWidget {
  const grantE({Key? key}) : super(key: key);


  @override
  State<grantE> createState() => _grantEState();
}

class _grantEState extends State<grantE> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/signin/noimage.jpg', ctext: translation(context).theunitedarabemirates, h: 'grantE', context: context),
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
                                          text: translation(context).theunitedarabemiratess,
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
                                          text: '800-8238\n',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch("tel://800-8238");
                                            },
                                        ),
                                        TextSpan(
                                          text: translation(context).location,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.white,
                                              fontFamily: 'CairoBd',
                                              decoration:
                                              TextDecoration.underline),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launchUrl(Uri.parse(
                                                  'https://map.uaeu.ac.ae/?id=111'));
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