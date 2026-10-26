import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'grantA.dart';
import 'grantE.dart';
import 'grantH.dart';



class grantsearch extends StatefulWidget {
  const grantsearch({Key? key}) : super(key: key);

  @override
  _grantsearchState createState() => _grantsearchState();
}

class _grantsearchState extends State<grantsearch> {
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
        image: 'images/signin/noimage.jpg', ctext: translation(context).theunitedarabemirates, h: 'grantE',n: grantE(),
      ),
      subproperty(
        image: 'images/not goverment and organiztion/ImageHandler.png', ctext: translation(context).americanuniversity, h: 'grantH',n: grantH(),
      ),
      subproperty(
        image: 'images/not goverment and organiztion/18450215-37c1-4dc4-86af-55455f304be1.jpg', ctext: translation(context).ainshams, h: 'grantA',n: grantA(),
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
