import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/grantserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import 'grantC.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class Grant extends StatefulWidget {
  const Grant({Key? key}) : super(key: key);

  @override
  State<Grant> createState() => _GrantState();
}

class _GrantState extends State<Grant> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: grantgearch(),),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      sub(image: 'images/gavorment and organiztions/خدمات الإغاثة الكاثوليكية.JPG', ctext: translation(context).catholic, n: grantC(), h: 'GrantC', context: context),
                    ])))));
  }
}
