import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/model/indicador_model.dart';

import 'elemento_Indicador.dart';


class GridIndicadores extends StatefulWidget {
  

  final indicadores;

  GridIndicadores({this.indicadores});

  @override
  _GridIndicadoresState createState() => _GridIndicadoresState();
}

class _GridIndicadoresState extends State<GridIndicadores> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: widget.indicadores.length,
        itemBuilder: (BuildContext context, int indice) {
          
          final indicador = IndicadorModel.fromJson(widget.indicadores[indice]);

          return ElementoGridIndicadores(
            atualiza: atualiza,
            indicador: indicador,
          );
        },
      ),
    );
  }

   void atualiza() {
    setState(() {
          
    });
  }
}
