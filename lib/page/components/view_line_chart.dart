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
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  var nilai;
  var waktu;
  var nilaichart;

  @override
  void initstate() {
    super.initState();
    getdata();
  }

  void getdata() {
    databaseReference.child('Alat_Ukur3/').onValue.listen((event) {
      Map data = event.snapshot.value as Map;

      data.forEach((key, value) {
        setState(() {
          nilai = ['n'];
          waktu = ['waktu'];
          List<double> doubleNilai = nilai.map(double.tryParse).toList();
          doubleNilai = nilaichart;
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
                showTitles: true, reservedSize: 20, getTitles: waktu),
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
                spots: nilaichart,
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
