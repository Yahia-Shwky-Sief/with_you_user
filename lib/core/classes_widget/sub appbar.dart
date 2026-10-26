import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
class subappbar extends StatefulWidget implements PreferredSizeWidget{
  final String title;
  final bool isbackbutton;
  final Widget n;
  const subappbar({Key? key,
    required this.title,
    required this.isbackbutton,
    required this.n,
  }) : super(key: key);

  @override
  State<subappbar> createState() => _subappbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

class _subappbarState extends State<subappbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading : widget.isbackbutton,
      actions: [
        IconButton(onPressed: (){ Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                alignment: Alignment.bottomCenter,
                child: widget.n));}, icon: Icon(Icons.search_rounded, color: Theme.of(context).secondaryHeaderColor,),),
      ],
      centerTitle: true,
      title: Text(widget.title,
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontFamily: 'CairoBd'),
      ),
      elevation: 0,
    );
  }

  Size get preferredSize => Size.fromHeight(60);
}

