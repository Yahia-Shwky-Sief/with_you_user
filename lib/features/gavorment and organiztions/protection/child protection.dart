import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proC.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proD.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proE.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proP.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proS.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proSt.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'protectionsearch.dart';

class protection extends StatefulWidget {
  const protection({Key? key}) : super(key: key);


  @override
  State<protection> createState() => _protectionState();
}

class _protectionState extends State<protection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(title: '', isbackbutton: true, n: protectionsearch(),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              sub(image: 'images/gavorment and organiztions/hh.jpg', ctext: translation(context).doctorswithoutborders, n: proD(), h: 'proD', context: context),
              sub(image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, n: proSt(), h: 'protectionStars', context: context),
              sub(image: 'images/gavorment and organiztions/care.png', ctext: translation(context).care, n: proC(), h: 'proC', context: context),
              sub(image: 'images/gavorment and organiztions/PSTIC-Egypt-15379-1564068811-og.webp', ctext: translation(context).pstic, n: proP(), h: 'proP', context: context),
              sub(image: 'images/gavorment and organiztions/Save the children.jpg', ctext: translation(context).savethechildren, n: proS(), h: 'ProSa', context: context),
              sub(image: 'images/gavorment and organiztions/efrr.png', ctext: translation(context).egyptianfoundationforrefugees, n: proE(), h: 'proEF', context: context),
            ]),
          ),
        ),
      ),
    );
  }
}

