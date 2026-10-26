import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/pillsC.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/pillsserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pills extends StatefulWidget {
  const pills({Key? key}) : super(key: key);


  @override
  State<pills> createState() => _pillsState();
}

class _pillsState extends State<pills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:subappbar(title: '', isbackbutton: true, n: pillsgsearch(),),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
                  sub(image: 'images/gavorment and organiztions/C.jpg', ctext: translation(context).caritasegypt, h: 'pillsC', n: pillsC(), context: context),
                ]))));
  }
}

