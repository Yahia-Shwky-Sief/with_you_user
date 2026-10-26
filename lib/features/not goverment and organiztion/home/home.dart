import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/home/homea.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/home/homear.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/home/homes.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/home/homeserch.dart';

import '../../../core/classes_widget/language_constants.dart';
class homen extends StatefulWidget {
  const homen({Key? key}) : super(key: key);


  @override
  State<homen> createState() => _homenState();
}

class _homenState extends State<homen> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(isbackbutton: true, title: '', n: homesearch(),),
      body: Center(
      child: Column(children: [
        filter(
          context: context,
          fun1: () {
            setState(() {
              isEmraties = !isEmraties;
              isEgypt = true;
              issaudi = true;
              isalgeria = true;
            });
          },
          fun2: () {
            setState(() {
              isEgypt = !isEgypt;
              isEmraties = true;
              issaudi = true;
              isalgeria = true;
            });
          },
          fun3: () {
            setState(() {
              isEgypt = !isEgypt;
              isEmraties = true;
              issaudi = true;
              isalgeria = true;
            });
          },
          fun4: () {
            setState(() {
              issaudi = !issaudi;
              isEgypt = true;
              isEmraties = true;
              isalgeria = true;
            });
          },
        ),
        SingleChildScrollView(
          child: Column(children: [
            isEgypt&& isalgeria?
            Column(children:[
              sub(image: 'images/gavorment and organiztions/Capriole-Group-Egypt-45820-1578313426-og.png', ctext: translation(context).arabteccontracting, n:  homea(), h: 'homea', context: context),
            ])
                : SizedBox(),
            isEmraties&& issaudi?
            Column(children:[
              sub(image: 'images/signin/noimage.jpg', ctext:  translation(context).alshamscontracting, n:  homes(), h: 'homeas', context: context),
            ])
                : SizedBox(),
          ]),
        ),
        sub(image: 'images/signin/noimage.jpg', ctext:  translation(context).arabConstruction, n:  homear(), h: 'homeac', context: context),
      ]),
      ),
    );
  }
}
