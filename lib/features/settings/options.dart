import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/auth/sign%20in.dart';
import 'package:with_you_user/core/classes_widget/language.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart' as MyApp;
import 'package:with_you_user/features/settings/profile.dart';

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(
        title: translation(context).settings,
        isbackbutton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const Profile(),
                  ),
                );
              },
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.w),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Text(
                                translation(context).profile,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontFamily: 'CairoBd',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Icon(Icons.language, size: 15.sp, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        translation(context).changelanguage,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'CairoBd',
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
                items: Language.languageList()
                    .map<DropdownItem<Language>>(
                      (e) => DropdownItem<Language>(
                        value: e,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Text(e.flag, style: TextStyle(fontSize: 16.sp)),
                              Text(
                                e.name,
                                style: TextStyle(
                                  fontFamily: 'CairoBd',
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (Language? language) async {
                  if (language != null) {
                    Locale locale = await setLocale(language.languageCode);
                    MyApp.setLocale(locale.languageCode);
                  }
                },
                iconStyleData: IconStyleData(
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                  iconSize: 15.sp,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: Colors.grey,
                ),
                buttonStyleData: ButtonStyleData(
                  height: 80,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black26),
                    color: Theme.of(context).primaryColor,
                  ),
                  elevation: 2,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                  elevation: 8,
                  offset: Offset(40.w, 0),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            MaterialButton(
              onPressed: () {
                Alert(
                  context: context,
                  style: AlertStyle(
                    titleStyle: TextStyle(fontFamily: 'CairoBd'),
                    animationDuration: 200.milliseconds,
                    animationType: AnimationType.grow,
                  ),
                  title: translation(context).aboutus,
                  content: Text(
                    translation(context).withyous,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'CairoBd',
                    ),
                  ),
                ).show();
              },
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_rounded,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.w),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Text(
                                translation(context).aboutus,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontFamily: 'CairoBd',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            MaterialButton(
              onPressed: () {
                Alert(
                  context: context,
                  style: AlertStyle(
                    titleStyle: TextStyle(fontFamily: 'CairoBd'),
                    animationDuration: 200.milliseconds,
                    animationType: AnimationType.grow,
                  ),
                  title: translation(context).contactus,
                  content: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: translation(context).information,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'CairoBd',
                          ),
                        ),
                        TextSpan(
                          text: '01065049397\n',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: 'CairoBd',
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch("tel:// 01065049397");
                            },
                        ),
                      ],
                    ),
                  ),
                ).show();
              },
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.contact_phone,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.w),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Text(
                                translation(context).contactus,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontFamily: 'CairoBd',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: signin(),
                  ),
                );
              },
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 2.w),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Text(
                                translation(context).logout,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontFamily: 'CairoBd',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Column(
              children: [
                SizedBox(
                  height: 18.h,
                  width: 18.h,
                  child: SvgPicture.asset('images/signin/bitmap.svg'),
                ),
                Text(
                  translation(context).withyou,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontFamily: 'Cairobd',
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  translation(context).version,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairobd',
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}
