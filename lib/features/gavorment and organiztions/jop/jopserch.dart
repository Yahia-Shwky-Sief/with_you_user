import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'jobC.dart';
import 'jobE.dart';




class jopsgearch extends StatefulWidget {
  const jopsgearch({Key? key}) : super(key: key);

  @override
  _jopsgearchState createState() => _jopsgearchState();
}

class _jopsgearchState extends State<jopsgearch> {
  List<subproperty>? subListSearch;
  final FocusNode _textFocusNode = FocusNode();
  final TextEditingController? _textEditingController = TextEditingController();
  @override

  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<subproperty> sublist = [
      subproperty(
        image:
        'images/gavorment and organiztions/خدمات الإغاثة الكاثوليكية.JPG',
        ctext: translation(context).catholic,
        h: 'jopC',
        n: jopC(),
      ),
      subproperty(
        image:
        'images/gavorment and organiztions/refuge egypt.webp',
        ctext: translation(context).egyptrefuge,
        n: jopE(),
        h: 'jopE',
      ),
    ];
    return Scaffold(
        appBar: serchappbar(
       serch: Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black,width: 2)),
         child: CupertinoSearchTextField(
           backgroundColor: Colors.white,
           style: TextStyle(fontFamily: 'CairoBd', color: Colors.black),
           borderRadius: BorderRadius.circular(20),
           controller: _textEditingController,
           focusNode: _textFocusNode,
           onChanged: (value) {
             setState(() {
               subListSearch = sublist
                   .where((element) => element.ctext
                   .toLowerCase()
                   .contains(value.toLowerCase()))
                   .toList();
               if (_textEditingController!.text.isNotEmpty &&
                   subListSearch!.isEmpty) {
                 print(
                     'foodListSearch length ${subListSearch!.length}');
               }
             });
           },
         ),
       ), isbackbutton: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _textEditingController!.text.isNotEmpty &&
                      subListSearch!.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search_off,
                                size: 160,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                translation(context).noresults,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: _textEditingController.text.isNotEmpty
                          ? subListSearch!.length
                          : sublist.length,
                      itemBuilder: (ctx, index) {
                        return Hero(
                            tag: _textEditingController.text.isNotEmpty
                                ? subListSearch![index].ctext.toLowerCase()
                                : sublist[index].ctext.toLowerCase(),
                            child: Material(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            alignment: Alignment.bottomCenter,
                                            child: sublist[index].n));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 0.5.h),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 15.h,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).primaryColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.h)),
                                          ),
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 20.w,
                                            height: 15.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    _textEditingController
                                                            .text.isNotEmpty
                                                        ? subListSearch![index]
                                                            .image
                                                        : sublist[index].image),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 1.h,
                                          ),
                                          Text(
                                            _textEditingController
                                                    .text.isNotEmpty
                                                ? subListSearch![index].ctext
                                                : sublist[index].ctext,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                                fontFamily: 'CairoBd'),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  )),
                            ));
                      }),
            ],
          ),
        ));
  }
}
