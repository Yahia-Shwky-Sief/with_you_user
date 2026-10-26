import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'language_constants.dart';
class subproperty{
  final String image;
  final String ctext;
  final Widget n;
  final String h;
  const subproperty({
  required this.image,
  required this.ctext,
  required this.h,
  required this.n,
}
  );
}
class SupportedCountry{
  final String flag;
  final String name;

  SupportedCountry( this.flag, this.name,);

  static List<SupportedCountry> countryList(BuildContext context) {
    return <SupportedCountry>[
      SupportedCountry( "🇪🇬", translation(context).egy,),
      SupportedCountry( "🇦🇪", translation(context).uae,),
    ];
  }
  static List<SupportedCountry> countryListCode() {
    return <SupportedCountry>[
      SupportedCountry( "🇪🇬", "+20",),
      SupportedCountry( "🇦🇪", "+971",),
    ];
  }
}
Widget fainl({
    required String image,
    required String ctext,
    required h,
    required BuildContext context,
    }) {
  return Hero(
      tag: h,
      child: Material(
        child: SizedBox(
          width: 90.w,
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 8,
                    right: 0,
                    left: 0,
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Container(
                        width: 85.w,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 600? 100 : 80),
                            child: Text(
                              ctext,
                              style: TextStyle(
                                  fontSize: 16.sp, color: Colors.white, fontFamily: 'CairoBd'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(image),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      )
  );
}

Widget sub({
      required String image,
      required String ctext,
      required Widget n,
      required h,
      required BuildContext context
    }) {
  return Hero(
    tag: h,
    child: Material(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.push(
              context, PageTransition(type: PageTransitionType.fade, child: n));
        },
        child:  SizedBox(
          width: 90.w,
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 8,
                    right: 0,
                    left: 0,
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Container(
                        width: 85.w,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width > 600? 100 : 80),
                            child: Text(
                              ctext,
                              style: TextStyle(
                                  fontSize: 16.sp, color: Colors.white, fontFamily: 'CairoBd'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(image),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    )
  );
}

Widget Tip(
    {required String icon,
      required String stext,
      required Widget n,
      required h,
      required BuildContext context}) {
  return Hero(
      tag: h,
      child: Material(
        child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      alignment: Alignment.bottomCenter,
                      child: n));
            },
            child: Padding(
              padding:EdgeInsets.symmetric(vertical: 2.h),
              child: Stack(
                children: [
                  Container(
                    width: 90.w,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30),),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w,),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 60,
                              height: 60,
                              child: SvgPicture.asset(
                                icon,
                                color: Colors.white,
                                fit: BoxFit.fitWidth,
                              )),
                          SizedBox(
                            width: 2.w,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: Text(
                              stext,
                              style: TextStyle(
                                  fontSize: 18.sp, color: Colors.white, fontFamily: 'CairoBd'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ));
}

Widget first(
    {required String icon,
    required String stext,
    required Widget n,
    required BuildContext context}) {
  return  MaterialButton(
    onPressed: () {
      Navigator.push(
          context, PageTransition(type: PageTransitionType.fade, child: n));
    },
    child: Padding(
      padding:EdgeInsets.symmetric(vertical: 2.h),
      child: Stack(children: [
        Center(
          child: Container(
            width: 90.w,
            height: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
         child: Padding(
           padding:EdgeInsets.symmetric(horizontal: 4.w),
           child: Row(
             children: [
               SizedBox(
                   width: 60,
                   height: 60,
                   child: SvgPicture.asset(
                     icon,
                     color: Colors.white,
                     fit: BoxFit.fitWidth,
                   )),
               SizedBox(
                 width: 2.w,
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 2.w),
                 child: Text(
                   stext,
                   style: TextStyle(
                       fontSize: 18.sp, color: Colors.white, fontFamily: 'CairoBd'),
                 ),
               ),
             ],
           ),
         ),
          ),
        ),
        ]),
    ),
  );
}

Widget Tipfainal(
    {required String icon,
      required String stext,
      required h,
      required BuildContext context}) {
  return Hero(
      tag: h,
      child: Material(
        child: Padding(
          padding:EdgeInsets.symmetric(vertical: 2.h),
          child: Stack(
            children: [
              Container(
                width: 90.w,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w,),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 60,
                          height: 60,
                          child: SvgPicture.asset(
                            icon,
                            color: Colors.white,
                            fit: BoxFit.fitWidth,
                          )),
                      SizedBox(
                        width: 2.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                          stext,
                          style: TextStyle(
                              fontSize: 18.sp, color: Colors.white, fontFamily: 'CairoBd'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
}

Widget filter({
  required BuildContext context,
  required void Function() fun1,
  required void Function() fun2,
  required void Function() fun3,
  required void Function() fun4,
    }){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 3.h,vertical: 2.h),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        InkWell(
          onTap: fun1,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 2),borderRadius: BorderRadius.circular(30),),
            child: Container(
              decoration: BoxDecoration(  color: Colors.transparent,borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Center(child: Text('🇦🇪', style: TextStyle(fontSize: 12.sp,),)),
                    Text(translation(context).uae,style: TextStyle(fontSize: 12.sp, color: Theme.of(context).primaryColor,fontFamily: 'CairoBd'),),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        InkWell(
          onTap: fun2,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 2),borderRadius: BorderRadius.circular(30),),
            child: Container(
              decoration: BoxDecoration(  color: Colors.transparent,borderRadius: BorderRadius.circular(25),),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Center(child: Text('🇪🇬', style: TextStyle(fontSize: 12.sp),)),
                    SizedBox(width: 6,),
                    Text(translation(context).egy,style: TextStyle(fontSize: 12.sp, color: Theme.of(context).primaryColor, fontFamily: 'CairoBd'),),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        InkWell(
          onTap: fun3,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 2),borderRadius: BorderRadius.circular(30),),
            child: Container(
              decoration: BoxDecoration(  color: Colors.transparent,borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Center(child: Text('🇸🇦', style: TextStyle(fontSize: 12.sp),)),
                    Text(translation(context).saudiarabia,style: TextStyle(fontSize: 12.sp, color: Theme.of(context).primaryColor, fontFamily: 'CairoBd'),),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        InkWell(
          onTap: fun4,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 2),borderRadius: BorderRadius.circular(30),),
            child: Container(
              decoration: BoxDecoration(  color: Colors.transparent,borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Center(child: Text('🇩🇿', style: TextStyle(fontSize: 12.sp),)),
                    Text(translation(context).algeria,style: TextStyle(fontSize: 12.sp, color: Theme.of(context).primaryColor, fontFamily: 'CairoBd'),),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
      ],),
    ),
  );
}