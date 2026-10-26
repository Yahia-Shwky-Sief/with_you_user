import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/trainam.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/trainb.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/traina.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/trainserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class trainn extends StatefulWidget {
  const trainn({Key? key}) : super(key: key);


  @override
  State<trainn> createState() => _trainnState();
}

class _trainnState extends State<trainn> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(title: '', isbackbutton: true, n: trainsearch(),),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
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
                    sub(image: 'images/not goverment and organiztion/ImageHandler.png', ctext: translation(context).americanuniversity,n: trainam(), h: 'trainam', context: context),
                    sub(image: 'images/not goverment and organiztion/New Project (2).jpg', ctext: translation(context).amideast, n: traina(), h: 'traina', context: context),
                  ])
                      : SizedBox(),
                  isEmraties&& issaudi?
                  Column(children:[
                    sub(image: 'images/not goverment and organiztion/udemy.png', ctext: translation(context).britishcouncil, n: trainb(), h: 'trainS', context: context),
                  ])
                      : SizedBox(),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}



