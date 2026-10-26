import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';

import '../splash/splashscreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool ismale = true;
  bool passwordvis = true;
  bool conffirmpasswordvis = true;
  String? selectedValue;

  final List<String> items = ["🇪🇬 +20", "🇦🇪 +971"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixText: translation(context).uusername,
                    labelText: translation(context).fullname,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixText: 'your current address',
                    labelText: translation(context).currentaddress,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.streetAddress,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 80.w,
                height: 6.h,
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text(
                            translation(context).selectcountry,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map(
                                (item) => DropdownItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'Cairo',
                                    ),
                                  ),
                                ),
                              )
                              .toList(),

                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            height: 40,
                            width: 140,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixText: "1065049397",
                          labelText: translation(context).phonenumber,
                          labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 80.w,
                height: 6.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: translation(context).email,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                    prefixText: "youremail@gmail.com",
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 6.h,
                width: 80.w,
                child: TextFormField(
                  obscureText: passwordvis,
                  decoration: InputDecoration(
                    prefixText: 'Your password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        passwordvis = !passwordvis;
                        setState(() {});
                      },
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    labelText: translation(context).password,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 6.h,
                width: 80.w,
                child: TextFormField(
                  obscureText: conffirmpasswordvis,
                  decoration: InputDecoration(
                    prefixText: 'Your password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        conffirmpasswordvis = !conffirmpasswordvis;
                        setState(() {});
                      },
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.h,
                    ),
                    labelText: translation(context).confirmpassword,
                    labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 1.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const loadingScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 8.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      translation(context).submit,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontFamily: 'CairoBd',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ).animate().shimmer(duration: 2000.milliseconds),
        ),
      ),
    );
  }
}
