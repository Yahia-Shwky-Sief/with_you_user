import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pillsC extends StatefulWidget {
  const pillsC({Key? key}) : super(key: key);


  @override
  State<pillsC> createState() => _pillsCState();
}

class _pillsCState extends State<pillsC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      fainl(image: 'images/gavorment and organiztions/C.jpg', ctext: translation(context).caritasegypt, h: 'pillsC', context: context),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Stack(children: [
                          Container(
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child:Padding(
                             padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                              child: Column(
                                children: [
                                  Center(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: translation(context).pilscs,
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
                                            text: translation(context).thofoctober,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: ' 01129884420\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel://01129884420");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).whatsapp,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01102839648\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01102839648");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).villa,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/M2Zj4R22xDGBJcPr7'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).dailyexcept,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).whatsapp,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01102839635\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01102839635");
                                              },
                                          ),
                                          TextSpan(
                                            text:translation(context).villag,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/1VXdUh82hkkJZdhe8'));
                                              },
                                          ),
                                          TextSpan(
                                            text:translation(context).villan,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/RoAVGtmoPYqZt7BGA'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).dailyexcept,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: translation(context).alex,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '0127726477',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 0127726477");
                                              },
                                          ),
                                          TextSpan(
                                            text: ' / ',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01120077088\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01120077088");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).whatsapp,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '0127726477',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 0127726477");
                                              },
                                          ),
                                          TextSpan(
                                            text: ' / ',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01129703003\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01129703003");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).noaman,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://g.page/PROKEM?share'));
                                              },
                                          ),
                                          TextSpan(
                                            text:  translation(context).alajmi,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01207726577\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01207726577");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).whatsapp,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01207726577\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01207726577");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).killo,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/Vw6q9ds4RnJeHmSr7'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).damiette,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01122000782',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01122000782");
                                              },
                                          ),
                                          TextSpan(
                                            text: ' / ',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01207937255\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01207937255");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).whatsapp,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01122000782\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01122000782");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).property,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/dV7VQrhQ8VLKDfPx6'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).mansoura,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01010280088\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01010280088");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).imam,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/PfWxaGAAMrFJE1xJA'));
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).matrouh,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                          TextSpan(
                                            text: '01016684787\n',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch("tel:// 01016684787");
                                              },
                                          ),
                                          TextSpan(
                                            text: translation(context).asr,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd',
                                                decoration:
                                                TextDecoration.underline),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                    'https://goo.gl/maps/HBTP7S6b5U4NNKAe9'));
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
                      ),
                              ])))));
                                       /* """


""",*/
    }
}
