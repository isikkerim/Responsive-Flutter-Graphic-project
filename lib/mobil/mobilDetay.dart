import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:get/get.dart';

class ChartData {
  ChartData(this.x, this.y, this.color);

  final int x;
  final double y;
  final Color? color;
}

final List<ChartData> chartData = [
  ChartData(1, 5, Colors.purple),
  ChartData(2, 23, Colors.blue),
  ChartData(3, 34, Colors.yellow),
  ChartData(4, 25, Colors.green),
  ChartData(5, 30, Colors.amber)
];

class mobileDetay extends StatefulWidget {
  const mobileDetay({Key? key}) : super(key: key);

  @override
  State<mobileDetay> createState() => _mobileDetayState();
}

class _mobileDetayState extends State<mobileDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(53, 63, 96, 1),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.035),
              child: solYazi("Sol Yazı"),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Get.width*0.025),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          icon(Colors.greenAccent),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                      Row(
                        children: [
                          icon(Colors.blue),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                      Row(
                        children: [
                          icon(Colors.orange),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          icon(Colors.yellow),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                      Row(
                        children: [
                          icon(Colors.pinkAccent),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                      Row(
                        children: [
                          icon(Colors.grey),
                          kategoriYazi("kategori", Get.width*0.025, Colors.white)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SfCartesianChart(
            primaryXAxis:
                CategoryAxis(majorGridLines: const MajorGridLines(width: 0)),
            primaryYAxis:
                CategoryAxis(majorGridLines: const MajorGridLines(width: 0)),
            series: <ChartSeries<ChartData, int>>[
              // Renders column chart
              ColumnSeries<ChartData, int>(
                  spacing: -0.1,
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  pointColorMapper: (ChartData data, _) => data.color)
            ])
      ]),
    ));
  }
}

solYazi(@required var yazi) {
  return Text(
    yazi,
    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: Get.width * 0.035),
  );
}

icon(@required Color? renk) {
  return Icon(
    Icons.circle,
    color: renk,
  );
}

kategoriYazi(@required yazi, @required double fontSize, @required Color renk) {
  return Padding(
    padding: EdgeInsets.all(3.0),
    child: Text(
      yazi,
      style: TextStyle(fontSize: fontSize, color: renk),
    ),
  );
}
