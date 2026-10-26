import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/grantA.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/grantE.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/grantH.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/grantserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class Grantn extends StatefulWidget {
  const Grantn({Key? key}) : super(key: key);

  @override
  State<Grantn> createState() => _GrantnState();
}

class _GrantnState extends State<Grantn> {


  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '',isbackbutton: true, n: grantsearch(),),
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
                    sub(image: 'images/signin/noimage.jpg', ctext: translation(context).theunitedarabemirates, h: 'grantE',n: grantE(), context: context),
                  ])
                      : SizedBox(),
                  isEmraties&& issaudi?
                  Column(children:[
                    sub(image: 'images/not goverment and organiztion/ImageHandler.png', ctext: translation(context).americanuniversity, h: 'grantH',n: grantH(), context: context),
                    sub(image: 'images/not goverment and organiztion/18450215-37c1-4dc4-86af-55455f304be1.jpg', ctext: translation(context).ainshams, h: 'grantA',n: grantA(), context: context),
                  ])
                      : SizedBox(),
                ]),
              ),
            ])));
  }
}
