import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/charts/indicador_charts.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph_co2.dart';
import 'package:thefive_planetaagua/widget/relatorio_base_hist.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class IndicadorHistPHCO2 extends StatefulWidget {
  @override
  _IndicadorHistPHCO2State createState() => _IndicadorHistPHCO2State();
}

class _IndicadorHistPHCO2State extends State<IndicadorHistPHCO2> {
 
  final List<IndicadorSeries> dados = [
    IndicadorSeries(year: '1955', dado: 3, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    IndicadorSeries(year: '1956', dado: 2, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '1985', dado: 4, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    IndicadorSeries(year: '1986', dado: 6, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '2005', dado: 6, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    IndicadorSeries(year: '2006', dado: 7, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '2010', dado: 5, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    IndicadorSeries(year: '2011', dado: 8, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '2020', dado: 9, barColor: charts.ColorUtil.fromDartColor(Colors.red)),
    IndicadorSeries(year: '2021', dado: 9, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
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
                    RelatorioBaseHist(),
                  ],
                ),
                RelatorioPHCO2(),

                // indicador

                Center(
                  child: IndicadorCharts(dados: dados),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: TheFive(),
                ),
              ],              
            ),
          ),
        ),
      ),
    );
  }
}
