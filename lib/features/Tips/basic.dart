import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';



class basictip extends StatefulWidget {
  const basictip({Key? key}) : super(key: key);

  @override
  State<basictip> createState() => _basictipState();
}

class _basictipState extends State<basictip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      Tipfainal(
                        icon: 'images/icons/scam.svg',
                        stext: translation(context).generaladvice,
                        context: context,
                        h: 'scam',
                      ),
                      Padding(
                        padding:EdgeInsets.only(bottom: 2.h),
                        child: Stack(children: [
                          Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                                child: Column(
                                  children: [
                                    Center(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: translation(context).tipone,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: translation(context).tiptwo,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: translation(context).tipthree,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: translation(context).tipfour,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
                                            ),
                                            TextSpan(
                                              text: translation(context).tipfive,
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.white,
                                                  fontFamily: 'CairoBd'),
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
