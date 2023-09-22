import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class DataPoint {
  final dynamic x;
  final dynamic y;

  DataPoint(this.x, this.y);
}

class MyWidget3 extends StatefulWidget {
  @override
  _MyWidget3State createState() => _MyWidget3State();
}

class _MyWidget3State extends State<MyWidget3> {
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference();
  List<DataPoint> dataPoints = [];

  @override
  void initState() {
    super.initState();
    // Mendengarkan perubahan pada data
    databaseReference
        .child('Alat_Ukur2')
        .limitToLast(20)
        .onValue
        .listen((event) {
      // Mendapatkan data dari DataSnapshot
      DataSnapshot snapshot = event.snapshot;
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;

      // Menghapus data sebelumnya
      dataPoints.clear();

      // Parsing data ke objek DataPoint
      values.forEach((key, value) {
        num? yValue = num.tryParse(value['k'].toString());
        if (yValue != null) {
          dataPoints.add(DataPoint(key, yValue));
        }
        num? xValue = num.tryParse(value['waktu']);
        if (xValue != null) {
          dataPoints.add(DataPoint(key, xValue));
        }
      });

      // Memperbarui tampilan setelah mendapatkan data
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <LineSeries<DataPoint, dynamic>>[
            LineSeries<DataPoint, dynamic>(
              dataSource: dataPoints,
              xValueMapper: (DataPoint data, _) => data.x,
              yValueMapper: (DataPoint data, _) => data.y!,
            ),
          ],
        ),
      ),
    );
  }
}
