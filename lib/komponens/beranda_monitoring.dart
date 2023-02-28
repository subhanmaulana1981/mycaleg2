import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class BerandaMonitoring extends StatefulWidget {
  const BerandaMonitoring({Key? key}) : super(key: key);

  @override
  State<BerandaMonitoring> createState() => _BerandaMonitoringState();
}

class _BerandaMonitoringState extends State<BerandaMonitoring> {
  List<_SalesData> data = [
    _SalesData('Utara', 35),
    _SalesData('Selatan', 28),
    _SalesData('Pusat', 34),
    _SalesData('Barat', 32),
    _SalesData('Timur', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //Initialize the chart widget
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: 'Kuota suara per wilayah'),
                  // Enable legend
                  legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Suara',
                        // Enable data label
                        dataLabelSettings: const DataLabelSettings(isVisible: true))
                  ],
              ),
            ),
          ],
        ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
