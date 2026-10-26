import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/help/helpM.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/help/helpR.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/help/helpserch.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'helpO.dart';

class helpn extends StatefulWidget {
  const helpn({Key? key}) : super(key: key);

  @override
  State<helpn> createState() => _helpnState();
}

class _helpnState extends State<helpn> {
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
        n: helpsearch(),
      ),
      body: Center(
        child: Column(
          children: [
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
                isEgypt && isalgeria
                    ? Column(children: [
                        sub(
                            image: 'images/signin/noimage.jpg',
                            ctext: translation(context).orman,
                            n: helpO(),
                            h: 'helpO',
                            context: context),
                        sub(
                            image: 'images/signin/noimage.jpg',
                            ctext: translation(context).resala,
                            n: helpR(),
                            h: 'helpR',
                            context: context),
                      ])
                    : SizedBox(),
                isEmraties && issaudi
                    ? Column(children: [
                        sub(
                            image:
                                'images/not goverment and organiztion/مؤسسة-مصر-الخير.jpg',
                            ctext: translation(context).misreLkhair,
                            n: helpM(),
                            h: 'helpM',
                            context: context),
                      ])
                    : SizedBox(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
