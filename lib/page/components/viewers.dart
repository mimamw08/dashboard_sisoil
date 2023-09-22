import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:dashboard_sisoil/page/components/new_chart.dart';
import 'package:dashboard_sisoil/page/components/new_chart2.dart';
import 'package:dashboard_sisoil/page/components/new_chart3.dart';
import 'package:dashboard_sisoil/page/components/new_chart4.dart';
import 'package:dashboard_sisoil/page/components/new_chart5.dart';

import 'package:dashboard_sisoil/page/components/view_line_chart.dart';
import 'package:flutter/material.dart';

class viewers extends StatefulWidget {
  viewers({Key? key}) : super(key: key);

  @override
  State<viewers> createState() => _viewersState();
}

class _viewersState extends State<viewers> {
  String dropdownValue = 'N';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1000,
        padding: EdgeInsets.all(appPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grafik N",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: MyWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grafik P",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: MyWidget2(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grafik K",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: MyWidget3(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grafik Moisture",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: MyWidget4(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grafik pH",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: MyWidget5(),
            )
          ],
        ));
  }
}
