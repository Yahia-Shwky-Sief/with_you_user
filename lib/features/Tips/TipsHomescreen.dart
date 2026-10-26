import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/custom%20appbar.dart';
import 'package:with_you_user/core/classes_widget/language_constants.dart';
import 'package:with_you_user/core/classes_widget/wedgitPackage.dart';
import 'package:with_you_user/features/Tips/basic.dart';

class tipsHomescreen extends StatefulWidget {
  const tipsHomescreen({Key? key}) : super(key: key);

  @override
  State<tipsHomescreen> createState() => _tipsHomescreenState();
}

class _tipsHomescreenState extends State<tipsHomescreen> {
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappbar(
          title: translation(context).tips,
          isbackbutton: false,
        ),
        body: WillPopScope(
          onWillPop: _onWillPop,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(children: [
                  Tip(
                    icon: 'images/icons/scam.svg',
                    stext: translation(context).generaladvice,
                    context: context,
                    n: const basictip(),
                    h: 'scam',
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
