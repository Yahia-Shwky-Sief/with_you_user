import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:with_you_user/auth/sign%20up.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/features/splash/splashscreen.dart';
import '../core/classes_widget/language.dart';

import '../main.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool value = false;
  bool passwordvis = true;
  bool isemail = true;
  bool conffirmpasswordvis = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SizedBox(height: 100.h,),
          Align(alignment: AlignmentDirectional.topEnd,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              dropdownColor: Colors.white,
              underline: const SizedBox(),
              icon:  Icon(
                Icons.language,
                size: 35,
                color: Theme.of(context).secondaryHeaderColor,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale locale = await setLocale(language.languageCode);
                  MyApp.setLocale(context, locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        e.flag,
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      Text(
                        e.name,
                        style:
                        TextStyle(fontFamily: 'CairoBd', fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              )
                  .toList(),
            ),
          ),),
          Positioned(
            top: 8.h,
            left: -10.w,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Theme.of(context).primaryColor,
            ), ).animate().move(duration: 1.seconds, begin: Offset(-100,-100)),
          Positioned(
            top: 25.h,
            right:-8.w,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Theme.of(context).primaryColor,
            ), //CircularAvatar
          ).animate().move(duration: 1.seconds, begin: Offset(100,0)), //Positioned
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25.h,
                    width: 25.h,
                    child: SvgPicture.asset(
                      'images/signin/bitmap.svg',
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  SizedBox(
                    width: 80.w,
                    height: 8.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                        labelText: translation(context)
                            .unchrregistrationnumberpassportnumber,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 13.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                    width: 80.w,
                    child: TextFormField(
                      obscureText: passwordvis,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            passwordvis = !passwordvis;
                            setState(() {});
                          },
                        ),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                        labelText: translation(context).password,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const loadingScreen()));
                    },
                    child: Container(
                      width: 80.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),  color: Theme.of(context).primaryColor,),
                      child: Center(
                        child: Text(translation(context).signin,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontFamily: 'CairoBd',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                     width: 85.w,
                     height: 6.h,
                     child: Row(
                       children: [
                         Checkbox(
                           value: value,
                           onChanged: (value) {
                             setState(() {
                               this.value = value!;
                             });
                           },
                           activeColor: Theme.of(context).primaryColor,
                         ), //Checkbox
                         Text(
                           translation(context).rememberme,
                           style: TextStyle(
                               fontSize: 12.sp,
                               color: Colors.black,
                               fontFamily: 'CairoS',
                           ),
                         ),
                         Expanded(child: SizedBox()),
                         InkWell(
                           onTap: () {
                             showDialog(
                               context: context, builder: (BuildContext context) => AlertDialog(
                               backgroundColor: Colors.transparent,
                               content: Container(
                                 width: 80.w,
                                 height: 30.h,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(30),
                                     color: Colors.white
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text(translation(context).forgetpassword,style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 20.sp)  ,),
                                       SizedBox(height: 2.h,),
                                       SizedBox(
                                         height: 6.h,
                                         child: TextFormField(
                                           decoration: InputDecoration(
                                             isDense: true,
                                             contentPadding:
                                             EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                                             labelText: translation(context)
                                                 .unchrregistrationnumberpassportnumber,
                                             labelStyle: TextStyle(
                                                 fontFamily: 'Cairo',
                                                 color: Colors.black,
                                                 fontSize: 10.sp),
                                             border: const OutlineInputBorder(),
                                           ),
                                           keyboardType: TextInputType.name,
                                         ),
                                       ),
                                       SizedBox(height: 2.h,),
                                       TextButton(child: Text(translation(context).forgetpassword, style:TextStyle(fontFamily: 'CairoBd', color: Colors.black, fontSize: 12.sp) ), onPressed: (){
                                         showDialog(
                                         context: context, builder: (BuildContext context) => AlertDialog(
                                         backgroundColor: Colors.transparent,
                                         content: Container(
                                           width: 80.w,
                                           height: 40.h,
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(30),
                                           ),
                                           child: Padding(
                                             padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                                             child: Column(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(translation(context).choosecontactway,style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 14.sp)  ,),
                                                 SizedBox(height: 2.h,),
                                                 SizedBox(
                                                   width: 55.w,
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     children: [
                                                       Icon(Icons.email,  color: Colors.black,),
                                                       SizedBox(width: 2.w,),
                                                       Text("You...mail@gmail.com",style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 12.sp)  ,),
                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(height: 2.h,),
                                                 SizedBox(
                                                   width: 55.w,
                                                   child: Row(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     children: [
                                                       Icon(Icons.sms, color: Colors.black,),
                                                       SizedBox(width: 2.w,),
                                                       Text(translation(context).yourphonenumber,style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 12.sp)  ,),
                                                     ],
                                                   ),
                                                 ),
                                                 SizedBox(height: 2.h,),
                                                 InkWell(onTap: (){
                                                   showDialog(
                                                   context: context, builder: (BuildContext context) => AlertDialog(
                                                   backgroundColor: Colors.transparent,
                                                   content: Container(
                                                     width: 80.w,
                                                     height: 40.h,
                                                     decoration: BoxDecoration(
                                                       color: Colors.white,
                                                       borderRadius: BorderRadius.circular(30),
                                                     ),
                                                     child: Padding(
                                                       padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                                                       child: Column(
                                                         mainAxisAlignment: MainAxisAlignment.center,
                                                         children: [
                                                           Text(translation(context).resetpassword,style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 14.sp)  ,),
                                                           SizedBox(height: 2.h,),
                                                           SizedBox(
                                                             height: 6.h,
                                                             width: 80.w,
                                                             child: TextFormField(
                                                               obscureText: passwordvis,
                                                               decoration: InputDecoration(
                                                                 isDense: true,
                                                                 contentPadding:
                                                                 EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                                                                 labelText: translation(context).password,
                                                                 labelStyle: TextStyle(
                                                                     fontFamily: 'Cairo',
                                                                     color: Colors.black,
                                                                     fontSize: 14.sp),
                                                                 border: OutlineInputBorder(),
                                                               ),
                                                               keyboardType: TextInputType.visiblePassword,
                                                             ),
                                                           ),
                                                           SizedBox(
                                                             height: 2.h,
                                                           ),
                                                           SizedBox(
                                                             height: 6.h,
                                                             width: 80.w,
                                                             child: TextFormField(
                                                               obscureText: conffirmpasswordvis,
                                                               decoration: InputDecoration(
                                                                 isDense: true,
                                                                 contentPadding:
                                                                 EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                                                                 labelText: translation(context).confirmpassword,
                                                                 labelStyle:
                                                                 TextStyle(fontFamily: 'Cairo', color: Colors.black, fontSize: 14.sp),
                                                                 border: OutlineInputBorder(),
                                                               ),
                                                               keyboardType: TextInputType.visiblePassword,
                                                             ),
                                                           ),
                                                           SizedBox(height: 2.h,),
                                                           InkWell(onTap: (){Navigator.pop(context);Navigator.pop(context);Navigator.pop(context);},child: Text(translation(context).resetpassword, style:TextStyle(fontFamily: 'CairoBd', color:   Colors.black,) ),),
                                                         ],
                                                       ),
                                                     ),
                                                   ),
                                                 ),
                                                 );},child: Text(translation(context).sendemail, style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,) ),),
                                                 SizedBox(height: 2.h,),
                                                 InkWell(onTap: (){
                                                   showDialog(
                                                       context: context, builder: (BuildContext context) => AlertDialog(
                                                     backgroundColor: Colors.transparent,
                                                     content: Container(
                                                       width: 80.w,
                                                       height: 40.h,
                                                       decoration: BoxDecoration(
                                                         color: Colors.white,
                                                         borderRadius: BorderRadius.circular(30),
                                                       ),
                                                       child: Padding(
                                                         padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                                                         child: Column(
                                                           mainAxisAlignment: MainAxisAlignment.center,
                                                           children: [
                                                             Text(translation(context).resetpassword,style:TextStyle(fontFamily: 'CairoBd', color: Colors.black,fontSize: 14.sp)  ,),
                                                             SizedBox(height: 2.h,),
                                                             SizedBox(
                                                               height: 6.h,
                                                               width: 80.w,
                                                               child: TextFormField(
                                                                 obscureText: passwordvis,
                                                                 decoration: InputDecoration(
                                                                   isDense: true,
                                                                   contentPadding:
                                                                   EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                                                                   labelText: translation(context).password,
                                                                   labelStyle: TextStyle(
                                                                       fontFamily: 'Cairo',
                                                                       color: Colors.black,
                                                                       fontSize: 14.sp),
                                                                   border: OutlineInputBorder(),
                                                                 ),
                                                                 keyboardType: TextInputType.visiblePassword,
                                                               ),
                                                             ),
                                                             SizedBox(
                                                               height: 2.h,
                                                             ),
                                                             SizedBox(
                                                               height: 6.h,
                                                               width: 80.w,
                                                               child: TextFormField(
                                                                 obscureText: conffirmpasswordvis,
                                                                 decoration: InputDecoration(
                                                                   isDense: true,
                                                                   contentPadding:
                                                                   EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                                                                   labelText: translation(context).confirmpassword,
                                                                   labelStyle:
                                                                   TextStyle(fontFamily: 'Cairo', color: Colors.black, fontSize: 14.sp),
                                                                   border: OutlineInputBorder(),
                                                                 ),
                                                                 keyboardType: TextInputType.visiblePassword,
                                                               ),
                                                             ),
                                                             SizedBox(height: 2.h,),
                                                             InkWell(onTap: (){Navigator.pop(context);Navigator.pop(context);Navigator.pop(context);},child: Text(translation(context).resetpassword, style:TextStyle(fontFamily: 'CairoBd', color:   Colors.black,) ),),
                                                           ],
                                                         ),
                                                       ),
                                                     ),
                                                   ));},child: Text(translation(context).sendsms, style:TextStyle(fontFamily: 'CairoBd', color:   Colors.black,) ),),
                                               ],
                                             ),
                                           ),
                                         ),
                                       ),
                                       );}),
                              ]
                                   ),
                               )
                             ),
                             ),
                             );
                           },
                           child: Text(
                             translation(context).forgetpasswordbutton,
                             style: TextStyle(
                                 fontSize: 12.sp,
                                 color: Colors.black,
                                 fontFamily: 'CairoS',
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                      ],
                    ),
                  ),
              ).animate().move(duration: 1.seconds, begin: Offset(0,-100)),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: signup()));
              },
              child: Text(
                translation(context).createaccount,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontFamily: 'CairoS',
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
        ),
        ),
    );
  }
}


