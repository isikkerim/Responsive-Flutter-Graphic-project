import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class ChartData {
  ChartData(this.x, this.y,this.color);
  final int x;
  final double y;
  final Color? color;
}
final List<ChartData> chartData = [
  ChartData(1, 5,Colors.purple),
  ChartData(2, 23,Colors.blue),
  ChartData(3, 34,Colors.yellow),
  ChartData(4, 25,Colors.green),
  ChartData(5, 30,Colors.amber)
];
class grafik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(children: [
          //Initialize the chart widget
          SfCartesianChart(primaryXAxis:  CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0)
          ),primaryYAxis:  CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0)
          ),
              series: <ChartSeries<ChartData, int>>[
                // Renders column chart
                ColumnSeries<ChartData, int>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.color
                )
              ]
          )


        ]));
  }
}

