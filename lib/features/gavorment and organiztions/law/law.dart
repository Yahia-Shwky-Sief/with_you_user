import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/law/lawL.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/law/lawserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class law extends StatefulWidget {
  const law({Key? key}) : super(key: key);


  @override
  State<law> createState() => _lawState();
}

class _lawState extends State<law> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(title: '', isbackbutton: true, n: lawgearch(),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              sub(image: 'images/gavorment and organiztions/UL.jpg', ctext: translation(context).unitedlawyers, n: lawL(), h: 'LawL', context: context),
            ]),
          ),
        ),
      ),
    );
  }
}

