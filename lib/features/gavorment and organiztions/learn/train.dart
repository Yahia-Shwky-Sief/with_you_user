import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/trainE.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/trainL.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/trainS.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/learn/trainserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class train extends StatefulWidget {
  const train({Key? key}) : super(key: key);


  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(title: '', isbackbutton: true, n: traingearch(),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              sub(image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, n: trainS(), h: 'trainS', context: context),
              sub(image: 'images/gavorment and organiztions/UL.jpg', ctext: translation(context).unitedlawyers,n: trainL(), h: 'trainL', context: context),
              sub(image: 'images/gavorment and organiztions/refuge egypt.webp', ctext: translation(context).egyptrefuge, n: trainE(), h: 'trainE', context: context),
            ]),
          ),
        ),
      ),
    );
  }
}



