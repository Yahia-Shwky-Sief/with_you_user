import 'package:flutter/material.dart';
class serchappbar extends StatefulWidget implements PreferredSizeWidget{
  final Widget serch;
  final bool isbackbutton;
  const serchappbar({Key? key,
    required this.serch,
    required this.isbackbutton
  }) : super(key: key);

  @override
  State<serchappbar> createState() => _serchappbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

class _serchappbarState extends State<serchappbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading : widget.isbackbutton,
      centerTitle: true,
      title: widget.serch,
      elevation: 0,
    );
  }

  Size get preferredSize => Size.fromHeight(60);
}

