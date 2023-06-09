import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ViewLineChart extends StatefulWidget {
  const ViewLineChart({Key? key}) : super(key: key);

  @override
  _ViewLineChartState createState() => _ViewLineChartState();
}

class _ViewLineChartState extends State<ViewLineChart> {
  List<Color> gradientColors = [
    primaryColor,
    secondaryColor,
  ];

  DatabaseReference data = FirebaseDatabase.instance.ref();

  var nilai_N;
  var waktu;
  var nilai;

  var sum;
  @override
  void initState() {
    profilberubah();
    super.initState();
  }

  void profilberubah() {
    data.child('Alat_Ukur1').onValue.listen((event) {
      Map profiluser = event.snapshot.value as Map;

      profiluser.forEach((key, value) {
        setState(() {
          nilai_N = ['N'];
          waktu = ['Waktu'];
          nilai = double.parse(nilai_N);
          print('hasilnya' + nilai_N.toString());
          sum = nilai + nilai;
          print('hasilnya' + sum);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        appPadding,
        appPadding * 1.5,
        appPadding,
        appPadding,
      ),
      child: LineChart(LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
                showTitles: true, reservedSize: 22, getTitles: waktu),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 20,
          maxY: 0,
          minY: 6,
          lineBarsData: [
            LineChartBarData(
                spots: sum,
                isCurved: true,
                colors: [primaryColor],
                barWidth: 5,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                    show: true,
                    colors:
                        gradientColors.map((e) => e.withOpacity(0.3)).toList(),
                    gradientFrom: Offset(0, 0),
                    gradientTo: Offset(0, 1.75)))
          ])),
    );
  }
}
