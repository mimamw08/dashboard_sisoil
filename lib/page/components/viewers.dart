import 'package:dashboard_sisoil/constants/constants.dart';
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
        height: 350,
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
                  "Grafik NPK",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
                DropdownButton<String>(
                  // Step 3.
                  value: dropdownValue,
                  // Step 4.
                  items: <String>['N', 'P', 'K', 'pH', 'Moist']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }).toList(),
                  // Step 5.
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ViewLineChart(),
            )
          ],
        ));
  }
}
