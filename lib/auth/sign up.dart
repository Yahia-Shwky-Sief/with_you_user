import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sizer/sizer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:with_you_user/auth/sign%20in.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import '../core/classes_widget/language.dart';


import '../main.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool ismale = true;
  bool passwordvis = true;
  bool conffirmpasswordvis = true;
  String? selectedValue;
  SupportedCountry? selectedCountry;

  final List<String> items = [
    "🇪🇬 +20",
    "🇦🇪 +971",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              dropdownColor: Colors.white,
              underline: const SizedBox(),
              icon: Icon(
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
                            style: TextStyle(
                                fontFamily: 'CairoBd', fontSize: 12.sp),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    translation(context).signup,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: 'CairoBd',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 80.w,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  labelText: translation(context).fullname,
                  labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    translation(context).dateofbirth,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: 'CairoBd',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        labelText: translation(context).day,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(),
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        labelText: translation(context).month,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(),
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        labelText: translation(context).year,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    translation(context).gender,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: 'CairoBd',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
              width: 80.w,
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color:
                      ismale ?  Theme.of(context).primaryColor: Colors.grey,
                      onPressed: () {
                        ismale = true;
                        setState(() {});
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                            ),
                            Text(
                              translation(context).male,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'CairoBd'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: MaterialButton(
                      color:
                          ismale ? Colors.grey : Theme.of(context).primaryColor,
                      onPressed: () {
                        ismale = false;
                        setState(() {});
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                            ),
                            Text(
                              translation(context).female,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontFamily: 'CairoBd'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            DropdownButtonHideUnderline(
              child: Container(
                width: 80.w,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black26),
                  color: Theme.of(context).primaryColor,
                ),
                child: DropdownButton<SupportedCountry>(
                hint: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        size: 15.sp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        translation(context).nationality,
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
                items: SupportedCountry.countryList(context)
                    .map<DropdownMenuItem<SupportedCountry>>(
                      (e) => DropdownMenuItem<SupportedCountry>(
                    value: e,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Text(
                            e.name,
                            style: TextStyle(
                                fontFamily: 'CairoBd', fontSize: 12.sp, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ).toList(),
                value: selectedCountry,
                onChanged: (SupportedCountry? value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 15.sp,
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.grey,
                dropdownColor: Theme.of(context).primaryColor,
                elevation: 8,
                isExpanded: true,
              ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  labelText: translation(context).homeaddress,
                  labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.streetAddress,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  labelText: translation(context).currentaddress,
                  labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.streetAddress,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        hint: Text(
                          translation(context).selectcountry,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Theme.of(context).hintColor,
                              fontFamily: 'CairoBd'
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        items: items
                            .map((item) => DropdownItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                        fontSize: 14.sp, fontFamily: 'CairoBd'),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
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
                        labelText: translation(context).phonenumber,
                        labelStyle: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14.sp),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  labelText: translation(context).email,
                  labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
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
                      fontSize: 13.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 80.w,
              height: 6.h,
              child: TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  labelText: translation(context).username,
                  labelStyle: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.black,
                      fontSize: 14.sp),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 6.h,
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
            SizedBox(height: 20,),
            SizedBox(
              height: 6.h,
              width: 80.w,
              child: TextFormField(
                obscureText: conffirmpasswordvis,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      conffirmpasswordvis = !conffirmpasswordvis;
                      setState(() {});
                    },
                  ),
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
            SizedBox(height: 10,),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: signin()));
                  },
                  child: Container(
                    height: 8.h,
                    width: 80.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),  color: Theme.of(context).primaryColor,),
                    child: Center(
                      child: Text(translation(context).signup,
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
                  height: 2.h,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse('https://help.unhcr.org/ar/'));
                  },
                  child: Text(
                    translation(context).toregisterwithuncherclickhere,
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontFamily: 'CairoS',
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ).animate().shimmer(duration: 2000.milliseconds),
      ),
    );
  }
}
