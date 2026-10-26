import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/health.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/help/help.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/home/home.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/jop/jop.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/law/law.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/learn.dart';
import '../../core/classes_widget/language_constants.dart';
import '../../core/classes_widget/wedgitPackage.dart';
class notHpmescreen extends StatefulWidget {
  const notHpmescreen({Key? key}) : super(key: key);

  @override
  State<notHpmescreen> createState() => _notHpmescreenState();
}

class _notHpmescreenState extends State<notHpmescreen> {
  Future<bool> _onWillPop() async {
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: translation(context).publicservices, isbackbutton: false,),
        body: WillPopScope(
          onWillPop: _onWillPop,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(children: [
                  first(icon: 'images/icons/health.svg', stext: translation(context).healthcare,n: healthn(), context: context,),
                  first(icon: "images/icons/aid.svg", stext:  translation(context).aid,n: helpn(), context: context,),
                  first(icon: 'images/icons/jobs.svg', stext:  translation(context).jobs,n: jopn(), context: context, ),
                  first(icon: 'images/icons/eduction.svg', stext: translation(context).education, n: learnn(), context: context, ),
                  first(icon: 'images/icons/law.svg', stext: translation(context).legaladvice,n:    lawn(), context: context,),
                  first(icon: 'images/icons/host.svg', stext: translation(context).hosting,n: homen(), context: context, ),
                  SizedBox(height: 3.h,),
                ]),
              ),
            ),
          ),
        )
    );
  }
}
