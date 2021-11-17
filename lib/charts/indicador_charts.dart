import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
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

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
