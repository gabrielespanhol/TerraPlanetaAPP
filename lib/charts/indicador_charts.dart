import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'indicador_series.dart';

// ignore: must_be_immutable
class IndicadorCharts extends StatelessWidget {
  List<IndicadorSeries> dados = [];

  List<charts.Series<IndicadorSeries, String>> series;

  IndicadorCharts({this.dados});

  @override
  Widget build(BuildContext context) {
    series = [
      charts.Series(
        id: "Indicadores",
        data: dados,
        domainFn: (IndicadorSeries series, _) => series.month,
        measureFn: (IndicadorSeries series, _) => series.ph,
      )
    ];

    return Container(
      height: 300,
      padding: EdgeInsets.all(30),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(child: charts.BarChart(
                series,
                animate: true,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
