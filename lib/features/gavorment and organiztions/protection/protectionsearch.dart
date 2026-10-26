import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proC.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proD.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proE.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proP.dart';
import 'package:with_you_user/features/gavorment%20and%20organiztions/protection/proSt.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'proS.dart';




class protectionsearch extends StatefulWidget {
  const protectionsearch({Key? key}) : super(key: key);

  @override
  _protectionsearchState createState() => _protectionsearchState();
}

class _protectionsearchState extends State<protectionsearch> {
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
        image: 'images/gavorment and organiztions/hh.jpg', ctext: translation(context).doctorswithoutborders, n: proD(), h: 'proD',
      ),
      subproperty(
        image: 'images/gavorment and organiztions/Stars.jpg', ctext: translation(context).stars, n: proSt(), h: 'protectionStars',
      ),
      subproperty(
        image: 'images/gavorment and organiztions/care.png', ctext: translation(context).care, n: proC(), h: 'proC',
      ),
      subproperty(
        image: 'images/gavorment and organiztions/PSTIC-Egypt-15379-1564068811-og.webp', ctext: translation(context).pstic, n: proP(), h: 'proP',
      ),
      subproperty(
        image: 'images/gavorment and organiztions/Save the children.jpg', ctext: translation(context).savethechildren, n: proS(), h: 'ProSa',
      ),
      subproperty(
        image: 'images/gavorment and organiztions/efrr.png', ctext: translation(context).egyptianfoundationforrefugees, n: proE(), h: 'proEF',
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
                        return sub(image:  _textEditingController
                            .text.isNotEmpty
                            ? subListSearch![index]
                            .image
                            : sublist[index].image, ctext:  _textEditingController
                            .text.isNotEmpty
                            ? subListSearch![index].ctext
                            : sublist[index].ctext, n: sublist[index].n, h: _textEditingController.text.isNotEmpty
                            ? subListSearch![index].h.toLowerCase()
                            : sublist[index].h.toLowerCase(), context: context);
                      }),
            ],
          ),
        ));
  }
}
