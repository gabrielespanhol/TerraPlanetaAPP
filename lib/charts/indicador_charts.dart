import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';


import 'indicador_series.dart';

// ignore: must_be_immutable
class IndicadorCharts extends StatelessWidget {

   final List<IndicadorSeries> dados;

  IndicadorCharts({this.dados});

   List<charts.Series<IndicadorSeries, String>> series = [

    charts.Series(
      id: "Indicadores",
      data: dados,
      domainFn: (IndicadorSeries series, _) => series.year,
      measureFn: (IndicadorSeries series, _) => series.ph,
      colorFn: (IndicadorSeries series, _) => series.barColor
    )
  ];


  @override
  Widget build(BuildContext context) {
    return charts.BarChart(series, animate: true,);
  }
}