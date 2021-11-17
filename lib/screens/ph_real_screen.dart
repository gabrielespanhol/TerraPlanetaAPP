import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/charts/indicador_charts.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph.dart';
import 'package:thefive_planetaagua/widget/relatorio_tempo_real.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';

class IndicadorRealPH extends StatefulWidget {
  @override
  _IndicadorRealPHState createState() => _IndicadorRealPHState();
}

class _IndicadorRealPHState extends State<IndicadorRealPH> {
  final List<IndicadorSeries> dados = [
    IndicadorSeries('2008', 2 ),
    IndicadorSeries('2009', 3 ),
    IndicadorSeries('2010', 4 ),
    IndicadorSeries('2011', 5 ),
    IndicadorSeries('2012', 6 ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: '',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 130,
                      height: 120,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("assets/images/logo.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    RelatorioTempoReal(),
                  ],
                ),
                RelatorioPH(), // indicador
                Center(
                  child: IndicadorCharts(dados: dados),
                ),
                TheFive(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
