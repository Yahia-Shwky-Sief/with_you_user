import 'package:flutter/material.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/ambulance.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/hospital.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/pills.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/psychologicalSupport.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';

class health extends StatefulWidget {
  const health({Key? key}) : super(key: key);


  @override
  State<health> createState() => _healthState();
}

class _healthState extends State<health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: customappbar(title: '', isbackbutton: true,),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(children: [
                first(icon: 'images/icons/ambulance.svg', stext: translation(context).ambulance, n: ambulance(),  context: context),
                first(icon: 'images/icons/hospital.svg', stext: translation(context).hospitals, n: hospital(), context: context),
                first(icon: 'images/icons/pharmacies.svg', stext: translation(context).pharmacies, n: pills(),  context: context),
                first(icon: 'images/icons/psychological aid.svg', stext: translation(context).psychologicalaid, n: psychologicalSupport(), context: context),
              ]),
            ),
          ),
        )
    );
  }
}
