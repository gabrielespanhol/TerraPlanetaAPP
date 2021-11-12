import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/model/indicador_model.dart';
import 'package:thefive_planetaagua/services/locais_service.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/grid_Indicadores.dart';

class IndicadorReal extends StatefulWidget {
  @override
  _IndicadorRealState createState() => _IndicadorRealState();
}

class _IndicadorRealState extends State<IndicadorReal> {
  final List indicadores = [
    {
      "id": "1",
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao": "indicador"
    },
    {
      "id": "2",
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao": "indicador"
    },
    {
      "id": "3",
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao": "indicador"
    }
  ];
  var teste = [];



  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: 'RELATÓRIO EM TEMPO REAL',
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 30, right: 20, top: 10, bottom: 10),
                      child: Divider())),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 30, top: 10, bottom: 10),
                      child: Divider())),
            ],
          ),
          
          Flexible(
              child: GridIndicadores(
            indicadores: indicadores,
            ),
          ),/*
         FutureBuilder<List<IndicadorModel>>(
    future: IndicadoresService().findAllAsync(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return GridIndicadores(indicadores: snapshot.data);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  ),*/
        ],
      ),
    );
  }
}
