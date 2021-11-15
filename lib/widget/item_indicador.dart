import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemIndicador extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Container(
        width: 140,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}