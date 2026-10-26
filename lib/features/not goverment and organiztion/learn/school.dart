import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolA.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolE.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolR.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class schooln extends StatefulWidget {
  const schooln({Key? key}) : super(key: key);


  @override
  State<schooln> createState() => _schoolnState();
}

class _schoolnState extends State<schooln> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: subappbar(title: '', isbackbutton: true, n: schoolsearch(),),
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
                sub(image: 'images/not goverment and organiztion/38994595-b209-46be-ac5a-9c12fd8844b3.jpg', ctext: translation(context).akhnatonschools, h: 'schoolA',n: schoolA(), context: context),
              ])
                  : SizedBox(),
              isEmraties&& issaudi?
              Column(children:[
                sub(image: 'images/not goverment and organiztion/30f02e89-ee52-4fdb-bf6a-593ecbeebfa5.jpg', ctext: translation(context).egyptianlanguageschool, h: 'schoolE',n: schoolE(), context: context),
                sub(image: 'images/not goverment and organiztion/74bd956d-cb3b-4b6b-90fc-245d2798565e.jpg', ctext: translation(context).rajakschool, h: 'schoolR',n: schoolR(), context: context),
              ])
                  : SizedBox(),
            ]),
          ),

        ]),
      ),
    );
  }
}