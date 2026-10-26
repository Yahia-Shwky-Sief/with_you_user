import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/schoolS.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/schoolserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class school extends StatefulWidget {
  const school({Key? key}) : super(key: key);


  @override
  State<school> createState() => _schoolState();
}

class _schoolState extends State<school> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: subappbar(title: '', isbackbutton: true, n: schoolgearch(),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              sub(image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, h: 'schoolS',n: schoolS(), context: context),
            ]),
          ),
        ),
      ),
    );
  }
}