import 'package:flutter/cupertino.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class IndicadorCharts extends StatelessWidget {
  final List<IndicadorSeries> data;

  IndicadorCharts({this.data});

  List<charts.Series<IndicadorSeries, String>> series = [

    charts.Series(
      id: "Indicadores",
      data: data,
      domainFn: (IndicadorSeries series, _) => series.year,
      measureFn: (IndicadorSeries series, _) => series.ph,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(series, animate: true,);
  }
}
