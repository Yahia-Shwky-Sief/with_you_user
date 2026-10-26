import 'package:flutter/material.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsL.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsb.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsZ.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/sub appbar.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pillsn extends StatefulWidget {
  const pillsn({Key? key}) : super(key: key);

  @override
  State<pillsn> createState() => _pillsnState();
}

class _pillsnState extends State<pillsn> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(
          title: '',
          isbackbutton: true,
          n: pillssearch(),
        ),
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
          Column(children: [
            isEgypt && isalgeria
                ? Column(children: [
                    sub(
                        image: 'images/signin/noimage.jpg',
                        ctext: translation(context).lifepharmacies,
                        h: 'pillsL',
                        n: pillsL(),
                        context: context),
                    sub(
                        image: 'images/signin/noimage.jpg',
                        ctext: translation(context).bootspharmacies,
                        h: 'pillsb',
                        n: pillsS(),
                        context: context),
                  ])
                : SizedBox(),
            isEmraties && issaudi
                ? Column(children: [
                    sub(
                        image:
                            'images/not goverment and organiztion/images.png',
                        ctext: translation(context).elezabypharmacies,
                        h: 'pillsZ',
                        n: pillsZ(),
                        context: context)
                  ])
                : SizedBox(),
          ]),
        ])));
  }
}
