import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class psychologicalSupportT extends StatefulWidget {
  const psychologicalSupportT({Key? key}) : super(key: key);


  @override
  State<psychologicalSupportT> createState() => _psychologicalSupportTState();
}

class _psychologicalSupportTState extends State<psychologicalSupportT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/TerreDesHommes.jpg', ctext: translation(context).terredezoom, h: 'psychologicalSupportT', context: context),
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
                              padding:  EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                              child: Column(
                                children: [
                                  Center(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:  translation(context).psychologicalSupportts,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).meansofcommunication,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).nasrcity,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01068885278\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01068885278");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).ainshams,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 01066396649\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01066396649");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).elharam,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01000178411',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01000178411");
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
                                            text: ' 01027146888\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01027146888");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).psychologicalSupportct,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).psychosocial,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 01000177147\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01000177147");
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],),
                      ),
                    ])))));
  }
}
