import 'imagem_elemeto_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thefive_planetaagua/model/indicador_model.dart';
import 'package:thefive_planetaagua/widget/titulo_elemeto_grid.dart';


class ElementoGridIndicadores extends StatefulWidget {
  final IndicadorModel indicador;

   final Function atualiza;

  ElementoGridIndicadores({this.indicador, this.atualiza});

  @override
  _ElementoGridIndicadoresState createState() => _ElementoGridIndicadoresState();
}

class _ElementoGridIndicadoresState extends State<ElementoGridIndicadores> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
            
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            color: Colors.black12,
          ),
        ]),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ImagemElementoGridIndicador(
                imagem: widget.indicador.foto,
              ),
              TituloElementoGridindicador(titulo: widget.indicador.titulo)
            ],
          ),
        ),
      ),
    );
  }

  

  void atualiza() {
    setState(() {
          
    });
  }
}

