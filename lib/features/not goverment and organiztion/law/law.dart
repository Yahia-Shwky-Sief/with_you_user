import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/law/lawserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'lawA.dart';
import 'lawZ.dart';
import 'lawb.dart';

class lawn extends StatefulWidget {
  const lawn({Key? key}) : super(key: key);


  @override
  State<lawn> createState() => _lawnState();
}

class _lawnState extends State<lawn> {
  bool isEmraties = true;
  bool isEgypt = true;
  bool issaudi = true;
  bool isalgeria = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: subappbar(title: '', isbackbutton: true, n: lawsearch(),),
      body:  Center(
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
                    sub(image: 'images/not goverment and organiztion/baker-mckenzie-thai-logo-1.jpg', ctext: translation(context).bakermckenzie, n: lawb(), h: 'Lawb', context: context),
                  ])
                      : SizedBox(),
                  isEmraties&& issaudi?
                  Column(children:[
                    sub(image: 'images/signin/noimage.jpg', ctext: translation(context).alzayat, n: lawZ(), h: 'lawZ', context: context),
                    sub(image: 'images/not goverment and organiztion/yXFZgon2CAnsXp9NlcNGJQC1xEGsZXb9HhW2mpTA.png', ctext: translation(context).adsero, n: lawA(), h: 'lawA', context: context),
                  ])
                      : SizedBox(),
                ]),
              ),
            ]),
          ),
    );
  }
}

