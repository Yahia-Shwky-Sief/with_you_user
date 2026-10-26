import 'package:flutter/material.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/jop/jobC.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/jop/jobE.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/jop/jopserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/sub appbar.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class jop extends StatefulWidget {
  const jop({Key? key}) : super(key: key);

  @override
  State<jop> createState() => _jopState();
}

class _jopState extends State<jop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: jopsgearch(),),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
          sub(
              image:
                  'images/gavorment and organiztions/خدمات الإغاثة الكاثوليكية.JPG',
              ctext: translation(context).catholic,
              h: 'jopC',
              n: jopC(),
              context: context),
          sub(
              image:
                  'images/gavorment and organiztions/refuge egypt.webp',
              ctext: translation(context).egyptrefuge,
              n: jopE(),
              h: 'jopE',
              context: context),
        ])))));
  }
}
