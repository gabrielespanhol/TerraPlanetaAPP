import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RelatorioTempoReal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("RELATÓRIO EM TEMPO REAL",
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
