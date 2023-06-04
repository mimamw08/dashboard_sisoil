import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/page/components/about_component.dart';
import 'package:flutter/material.dart';

class abput_us extends StatefulWidget {
  abput_us({Key? key}) : super(key: key);

  @override
  State<abput_us> createState() => _abput_usState();
}

class _abput_usState extends State<abput_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
      child: Column(
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: about_content()),
        ],
      ),
    ));
  }
}
