import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/psychologicalSupportC.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/psychologicalSupportT.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/psychologicalSupportsearch.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class psychologicalSupport extends StatefulWidget {
  const psychologicalSupport({Key? key}) : super(key: key);

  @override
  State<psychologicalSupport> createState() => _psychologicalSupportState();
}

class _psychologicalSupportState extends State<psychologicalSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: psychologicalSupportsearch(),),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      sub(image: 'images/gavorment and organiztions/C.jpg', ctext: translation(context).caritasegypt, h: 'psychologicalSupportC', n: psychologicalSupportC(), context: context),
                      sub(image: 'images/gavorment and organiztions/TerreDesHommes.jpg', ctext: translation(context).terredezoom, h: 'psychologicalSupportT', n: psychologicalSupportT(), context: context),
        ])))));
  }
}