import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/features/Tips/TipsHomescreen.dart';
import 'package:with_you_user/settings/options.dart';


import 'gavorment and organiztions/homescreen.dart';
import 'not goverment and organiztion/HomescreenN.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
  int index = 3;
  void changeindex(int value){setState(() {
    index = value;
  });}
  List screens= < Widget>[
     options(),
    tipsHomescreen(),
    homescreen(),
    notHpmescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(index),
      bottomNavigationBar:  StyleProvider(style: Style(),
        child: ConvexAppBar(
          items: [
          TabItem(icon:Icons.settings, title: translation(context).settings,),
          TabItem(icon:Icons.tips_and_updates,title:translation(context).generaladvice,),
          TabItem(icon:Icons.account_balance,title:translation(context).governmentservices, ),
          TabItem(icon:Icons.person, title:translation(context).publicservices,),
        ],
          backgroundColor: Colors.white,
          initialActiveIndex: index,
          activeColor: Theme.of(context).primaryColor,
          color: Colors.black,
          onTap: changeindex,
          height: 10.h,
        ),
      ),
    );
  }
}
class Style extends StyleHook {

  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 1.h;

  @override
  double get iconSize => 30;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
   return TextStyle(fontSize: 8.sp, fontFamily: 'CairoBd',color: Colors.black);
  }
}