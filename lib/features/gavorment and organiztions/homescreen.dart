import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/health.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/help/help.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/jop/jop.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/law/law.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/learn.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/child%20protection.dart';

import '../../core/classes_widget/language_constants.dart';
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Future<bool> _onWillPop() async {
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: customappbar(title:translation(context).governmentservices, isbackbutton: false,),
        body: WillPopScope(
          onWillPop: _onWillPop,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(children: [
                  first(icon: 'images/icons/health.svg', stext: translation(context).healthcare,n: health(), context: context, ),
                  first(icon: "images/icons/aid.svg", stext:  translation(context).aid,n: help(), context: context, ),
                  first(icon: 'images/icons/jobs.svg', stext: translation(context).jobs,n: jop(), context: context, ),
                  first(icon: 'images/icons/eduction.svg', stext: translation(context).education, n: learn(), context: context, ),
                  first(icon: 'images/icons/law.svg', stext: translation(context).legaladvice, n:  law(), context: context, ),
                  first(icon: 'images/icons/protection-svgrepo-com.svg', stext: translation(context).childprotection, n:  protection(), context: context, ),
                  SizedBox(height: 3.h,)
                ]),
              ),
            ),
          ),
        )
    );
  }
}
