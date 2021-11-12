import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheFive extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Center(
        child: Text("THE FIVE",
        style: TextStyle(
          fontSize: 13,
          color: Colors.black,
        ),
        ),
      ),
    );
  }
}