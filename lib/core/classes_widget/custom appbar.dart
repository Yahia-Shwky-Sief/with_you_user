import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class customappbar extends StatefulWidget implements PreferredSizeWidget{
  final String title;
  final bool isbackbutton;
  const customappbar({Key? key,
    required this.title,
    required this.isbackbutton,
  }) : super(key: key);

  @override
  State<customappbar> createState() => _customappbarState();
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

class _customappbarState extends State<customappbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading : widget.isbackbutton,
      centerTitle: true,
      title: Text(widget.title,
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontFamily: 'CairoBd'),
      ),
      elevation: 0,
    );
  }

  Size get preferredSize => const Size.fromHeight(60);
}

