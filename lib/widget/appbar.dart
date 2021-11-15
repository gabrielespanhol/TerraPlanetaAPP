

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  

  AppBarCustomizada({this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
    );
  }



  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
