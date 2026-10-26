import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/jop/jopj.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/jop/jopserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'joph.dart';
import 'jopm.dart';

class jopn extends StatefulWidget {
  const jopn({Key? key}) : super(key: key);


  @override
  State<jopn> createState() => _jopnState();
}

class _jopnState extends State<jopn> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:subappbar(isbackbutton: true, title: '', n: jopsearch(),),
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
                    sub(
                        image:
                        'images/not goverment and organiztion/unnamed.png',
                        ctext: translation(context).homesite,
                        h: 'joph',
                        n: joph(),
                        context: context),
                    sub(
                        image:
                        'images/signin/noimage.jpg',
                        ctext: translation(context).jobscomwebsite,
                        n: jopjo(),
                        h: 'jopjo',
                        context: context),
                  ])
                      : SizedBox(),
                  isEmraties&& issaudi?
                  Column(children:[
                    sub(
                        image:
                        'images/not goverment and organiztion/57f1fe4e2fa95_tanqeeb_logo.png',
                        ctext: translation(context).excavationsite,
                        n: jopm(),
                        h: 'jopm',
                        context: context),
                  ])
                      : SizedBox(),
                ]),
              ),
        ])));
  }
}
