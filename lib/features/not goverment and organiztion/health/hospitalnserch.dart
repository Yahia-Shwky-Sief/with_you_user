import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you_user/core/classes_widget/search%20appbar.dart';
import '../../../core/classes_widget/language_constants.dart';
import '../../../core/classes_widget/wedgitPackage.dart';
import 'hospitalA.dart';
import 'hospitalG.dart';
import 'hospitals.dart';

class hospitalsearch extends StatefulWidget {
  const hospitalsearch({Key? key}) : super(key: key);

  @override
  _hospitalsearchState createState() => _hospitalsearchState();
}

class _hospitalsearchState extends State<hospitalsearch> {
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
          image: 'images/not goverment and organiztion/garmin.jpeg',
          ctext: translation(context).germansaudihospital,
          h: 'hospitals',
          n: Hospitals()),
      subproperty(
        image: 'images/not goverment and organiztion/American-Hosptial.jpg',
        ctext: translation(context).americanhospital,
        n: HospitalA(),
        h: 'hospitalA',
      ),
      subproperty(
        image:
            'images/not goverment and organiztion/ganzouri-specialized_20220720161127962.jpg',
        ctext: translation(context).ganzourispecialized,
        n: HospitalG(),
        h: 'HospitalG',
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
                              style: const TextStyle(
                                  fontSize: 30, fontFamily: 'CairoBd'),
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
        )));
  }
}
