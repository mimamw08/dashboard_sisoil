import 'package:dashboard_sisoil/page/components/component_prediksi.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class list_prediksi extends StatelessWidget {
  const list_prediksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 200,
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: prediksi(),
          ),
        ],
      ),
    ));
  }
}
