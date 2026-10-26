
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/hospitalA.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/hospitalG.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/hospitalnserch.dart';

import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'hospitals.dart';

class hospitaln extends StatefulWidget {
  const hospitaln({Key? key}) : super(key: key);


  @override
  State<hospitaln> createState() => _hospitalnState();
}

class _hospitalnState extends State<hospitaln> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: hospitalsearch(),),
        body: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                child: Column(
                  children: [
                    isEgypt&& isalgeria?
                    Column(children:[
                      sub(image: 'images/not goverment and organiztion/garmin.jpeg', ctext:  translation(context).germansaudihospital, h: 'hospitals' ,n: Hospitals(), context: context),
                      sub(image: 'images/not goverment and organiztion/American-Hosptial.jpg', ctext:  translation(context).americanhospital, n:  HospitalA(), h: 'hospitalA', context: context),
                    ])
                        : SizedBox(),
                    isEmraties&& issaudi?
                    Column(children:[
                      sub(image: 'images/not goverment and organiztion/ganzouri-specialized_20220720161127962.jpg', ctext:  translation(context).ganzourispecialized, n:  HospitalG(), h: 'HospitalG', context: context)
                    ])
                        : SizedBox(),
                  ],
                ),
              )
            ])));
  }
}
