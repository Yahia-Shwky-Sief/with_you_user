import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/hospital.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pills.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class healthn extends StatefulWidget {
  const healthn({Key? key}) : super(key: key);


  @override
  State<healthn> createState() => _healthnState();
}

class _healthnState extends State<healthn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(children: [
                first(icon: 'images/icons/hospital.svg', stext: translation(context).hospitals, n: hospitaln(), context: context),
                first(icon: 'images/icons/pharmacies.svg', stext: translation(context).pharmacies, n: pillsn(),  context: context),
              ]),
            ),
          ),
        )
    );
  }
}
