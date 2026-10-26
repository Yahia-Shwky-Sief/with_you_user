import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/help/helpserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'helpC.dart';

class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);


  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: helpsgearch()),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
                  sub(image: 'images/gavorment and organiztions/C.jpg', ctext: translation(context).caritasegypt, n: helpC(), h: 'helpC', context: context),
                ]))));
  }
}
