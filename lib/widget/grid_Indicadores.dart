import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/model/movel.dart';

import 'elemento_Indicador.dart';


class GridIndicadores extends StatefulWidget {
  final Function atualiza;

  final moveis;

  GridIndicadores({this.moveis, this.atualiza});

  @override
  _GridIndicadoresState createState() => _GridIndicadoresState();
}

class _GridIndicadoresState extends State<GridIndicadores> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: widget.moveis.length,
      itemBuilder: (BuildContext context, int indice) {
        final movel = Movel.fromJson(widget.moveis[indice]);

        return ElementoGridIndicadores(
          atualiza: atualiza,
          movel: movel,
        );
      },
    );
  }

   void atualiza() {
    setState(() {
          
    });
  }
}
