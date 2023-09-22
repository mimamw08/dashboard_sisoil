import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:dashboard_sisoil/page/components/bar_alat3.dart';
import 'package:dashboard_sisoil/page/components/datagrid.dart';
import 'package:flutter/material.dart';

class component_list extends StatelessWidget {
  const component_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Container(
            height: 350,
            width: 400,
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: alat3(),
          ),
        ],
      ),
    ));
  }
}
