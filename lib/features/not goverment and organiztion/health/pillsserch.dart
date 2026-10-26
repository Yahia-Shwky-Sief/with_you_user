import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsL.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsZ.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/health/pillsb.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';

class pillssearch extends StatefulWidget {
  const pillssearch({Key? key}) : super(key: key);

  @override
  _pillssearchState createState() => _pillssearchState();
}

class _pillssearchState extends State<pillssearch> {
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
          image: 'images/signin/noimage.jpg',
          ctext: translation(context).lifepharmacies,
          h: 'pillsL',
          n: pillsL(),
      ),
      subproperty(
        image: 'images/signin/noimage.jpg',
        ctext: translation(context).bootspharmacies,
        h: 'pillsb',
        n: pillsS(),
      ),
      subproperty(
              image: 'images/not goverment and organiztion/images.png',
              ctext: translation(context).elezabypharmacies,
              h: 'pillsZ',
              n: pillsZ(),
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
                      })
            ],
          ),
        ));
  }
}
