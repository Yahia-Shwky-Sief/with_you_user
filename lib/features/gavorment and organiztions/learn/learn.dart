import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/Grant.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/school.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/train.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';

import '../../../core/classes_widget/custom appbar.dart';
import '../../../core/classes_widget/language_constants.dart';

class learn extends StatefulWidget {
  const learn({Key? key}) : super(key: key);


  @override
  State<learn> createState() => _learnState();
}

class _learnState extends State<learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: '', isbackbutton: true),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              first(icon: 'images/icons/training centers.svg', stext: translation(context).trainingcenters, n: train(), context: context, ),
              first(icon: 'images/icons/schools.svg', stext: translation(context).institutionaleducation, n: school(), context: context,),
              first(icon: 'images/icons/grant.svg', stext: translation(context).grant, n: Grant(), context: context,),
            ]),
          ),
        ),
      ),
    );
  }
}
