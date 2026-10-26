import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolA.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolE.dart';
import 'package:with_you_user/features/not%20goverment%20and%20organiztion/learn/schoolR.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';




class schoolsearch extends StatefulWidget {
  const schoolsearch({Key? key}) : super(key: key);

  @override
  _schoolsearchState createState() => _schoolsearchState();
}

class _schoolsearchState extends State<schoolsearch> {
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
        image: 'images/not goverment and organiztion/30f02e89-ee52-4fdb-bf6a-593ecbeebfa5.jpg', ctext: translation(context).egyptianlanguageschool, h: 'schoolE',n: schoolE(),
      ),
      subproperty(
        image: 'images/not goverment and organiztion/74bd956d-cb3b-4b6b-90fc-245d2798565e.jpg', ctext: translation(context).rajakschool, h: 'schoolR',n: schoolR(),
      ),
      subproperty(
        image: 'images/not goverment and organiztion/38994595-b209-46be-ac5a-9c12fd8844b3.jpg', ctext: translation(context).akhnatonschools, h: 'schoolA',n: schoolA(),
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
