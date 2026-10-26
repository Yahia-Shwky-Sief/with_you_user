import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/sub%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/amblunceserch.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/health/ambulanceE.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class ambulance extends StatefulWidget {
  const ambulance({Key? key}) : super(key: key);


  @override
  State<ambulance> createState() => _ambulanceState();
}

class _ambulanceState extends State<ambulance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: subappbar(title: '', isbackbutton: true, n: ambulancesearch(),),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
                    child: Column(children: [
                      sub(image: 'images/gavorment and organiztions/egya.jpg', ctext: translation(context).egyptianmbulance, n: ambulanceE(), h: 'ambulanceE', context: context),
                    ])))));
  }
}