

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/hospitalc.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/hospitald.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/hospitalserch.dart';

import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/sub appbar.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class hospital extends StatefulWidget {
  const hospital({Key? key}) : super(key: key);


  @override
  State<hospital> createState() => _hospitalState();
}

class _hospitalState extends State<hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: hospitalgsearch(),),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      sub(image: 'images/gavorment and organiztions/Save the children.jpg', ctext:  translation(context).savethechildren, n:  hospitalc(), h: 'hospitalc', context: context),
                      sub(image: 'images/gavorment and organiztions/hh.jpg', ctext: translation(context).doctorswithoutborders, n: hospitald(), h: 'hospitald', context: context),
                    ])))));
  }
}