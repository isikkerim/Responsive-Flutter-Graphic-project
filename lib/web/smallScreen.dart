import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grafik/web/detaySayfasi.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../grafik.dart';
import '../mobil/mobilDetay.dart';
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
class smallScreen extends StatefulWidget {
  const smallScreen({Key? key}) : super(key: key);

  @override
  State<smallScreen> createState() => _smallScreenState();
}

class _smallScreenState extends State<smallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(flex: 1,
            child: Row(
              children: [
                Expanded(flex: 1,
                  child: Container(
                    color: Color.fromRGBO(53, 63, 96, 1),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          tiklanabilir("35.206","Kayıtlı Kullanıcı"),
                          tiklanamaz("35.206","Kayıtlı Kullanıcı "),
                          tiklanamaz("35.206","Kayıtlı Kullanıcı "),
                          tiklanabilir("35.206","Kayıtlı Kullanıcı "),
                          tiklanabilir("35.206","Kayıtlı Kullanıcı Kayıtlı Kullanıcı"),
                          tiklanabilir("35.206","Kayıtlı Kullanıcı Kayıtlı Kullanıcı"),
                          tiklanamaz("35.206","Kayıtlı Kullanıcı Kayıtlı Kullanıcı"),
                          tiklanamaz("35.206","Kayıtlı Kullanıcı Kayıtlı Kullanıcı"),
                          tiklanamaz("35.206","Kayıtlı Kullanıcı Kayıtlı Kullanıcı"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
tiklanamaz(@required String ustYazi, @required String altYazi) {return
  Padding(
    padding: EdgeInsets.symmetric(
        vertical: Get.height * 0.015, horizontal: Get.width * 0.035),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black87),
          color: Color.fromRGBO(60, 110, 216, 1),
          borderRadius: BorderRadius.circular(15)),
      height: Get.height * 0.30,
      width: Get.width * 0.95,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .0015,
                  vertical: Get.height * 0.015),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.03),
                            child: Container(
                              height: Get.height * 0.25,
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    ustYazi,
                                    style: TextStyle(
                                        color: Color.fromRGBO(8, 247, 75, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.height * 0.030),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(flex: 1,
                                        child: Text(
                                          altYazi,textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: Get.height * 0.030),
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Get.width*0.015,vertical: Get.height*0.015
                            ),
                            child: Container(
                              width: Get.width * 0.5,
                              height: Get.height * 0.2,
                              child: SfCartesianChart(
                                  primaryXAxis: CategoryAxis(labelStyle: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500
                                  ),
                                      majorGridLines:
                                      const MajorGridLines(width: 0)),
                                  primaryYAxis: CategoryAxis(labelStyle: TextStyle(
                                      color: Colors.black87,
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500
                                  ),
                                      majorGridLines:
                                      const MajorGridLines(width: 0)),
                                  series: <ChartSeries<ChartData, int>>[
                                    // Renders column chart
                                    ColumnSeries<ChartData, int>(
                                        spacing: -0.1,
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data, _) =>
                                        data.x,
                                        yValueMapper: (ChartData data, _) =>
                                        data.y,
                                        pointColorMapper: (ChartData data, _) =>
                                        data.color)
                                  ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    ),
  );
}

tiklanabilir(@required String ustYazi, @required String altYazi) {return
  GestureDetector(
    onTap: () {
      Get.to(mobileDetay());
    },
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.015, horizontal: Get.width * 0.035),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black87),
            color: Color.fromRGBO(113, 59, 215, 1),
            borderRadius: BorderRadius.circular(15)),
        height: Get.height * 0.30,
        width: Get.width * 0.95,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .0015,
                    vertical: Get.height * 0.015),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(flex: 1,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.03),
                              child: Container(
                                height: Get.height * 0.25,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      ustYazi,
                                      style: TextStyle(
                                          color: Color.fromRGBO(8, 247, 75, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: Get.height * 0.030),
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(flex: 5,
                                          child: Text(
                                            altYazi,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: Get.height * 0.030),
                                          ),
                                        ),
                                        Expanded(flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_outlined,
                                            size: Get.height * 0.035,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(flex: 1,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: Get.width*0.015,vertical: Get.height*0.015
                              ),
                              child: Container(
                                width: Get.width * 0.5,
                                height: Get.height * 0.2,
                                child: SfCartesianChart(
                                    primaryXAxis: CategoryAxis(labelStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w500
                                    ),
                                        majorGridLines:
                                        const MajorGridLines(width: 0)),
                                    primaryYAxis: CategoryAxis(labelStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w500
                                    ),
                                        majorGridLines:
                                        const MajorGridLines(width: 0)),
                                    series: <ChartSeries<ChartData, int>>[
                                      // Renders column chart
                                      ColumnSeries<ChartData, int>(
                                          spacing: -0.1,
                                          dataSource: chartData,
                                          xValueMapper: (ChartData data, _) =>
                                          data.x,
                                          yValueMapper: (ChartData data, _) =>
                                          data.y,
                                          pointColorMapper: (ChartData data, _) =>
                                          data.color)
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
