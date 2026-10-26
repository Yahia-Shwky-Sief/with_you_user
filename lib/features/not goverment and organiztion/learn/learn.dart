import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/Grant.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/school.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/train.dart';

import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';

class learnn extends StatefulWidget {
  const learnn({Key? key}) : super(key: key);


  @override
  State<learnn> createState() => _learnnState();
}

class _learnnState extends State<learnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: '', isbackbutton: true),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              first(icon: 'images/icons/training centers.svg', stext: translation(context).trainingcenters, n: trainn(), context: context, ),
              first(icon: 'images/icons/schools.svg', stext: translation(context).institutionaleducation, n: schooln(), context: context,),
              first(icon: 'images/icons/grant.svg', stext: translation(context).grant, n: Grantn(), context: context,),
            ]),
          ),
        ),
      ),
    );
  }
}
