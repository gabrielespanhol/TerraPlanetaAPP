import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RelatorioCO2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text("CO2",
                        style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                      ),
                     ),
                  ),
                ),
      ],
    );
  }
}
