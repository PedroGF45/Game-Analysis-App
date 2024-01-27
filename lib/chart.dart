import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:game_analysis_app/chart_bar.dart';

class Chart extends StatelessWidget {
  final List<ChartBar> data;
  final String title;

  Chart({required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartBar, String>> series = [
      charts.Series(
        id: "VALORES",
        data: data,
        domainFn: (ChartBar series, _) => series.xAxis,
        measureFn: (ChartBar series, _) => series.yAxis,
        colorFn: (ChartBar series, _) => charts.ColorUtil.fromDartColor(Colors.blue),
        labelAccessorFn: (ChartBar series, _) => '${series.yAxis}',
      )
    ];

    return Container(
      width: 300,
      height: 300,
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Text(title),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  barRendererDecorator: new charts.BarLabelDecorator<String>(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}