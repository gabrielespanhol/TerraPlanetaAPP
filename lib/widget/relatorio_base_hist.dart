import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RelatorioBaseHist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("RELATÓRIO COM BASE\nHISTÓRICA",
                      style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    ),
                   ),
                    )
      ],
    );
  }
}
