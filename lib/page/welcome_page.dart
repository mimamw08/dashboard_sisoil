import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/page/components/front_image.dart';
import 'package:dashboard_sisoil/page/login.dart';
import 'package:flutter/material.dart';

class welcome_page extends StatefulWidget {
  welcome_page({Key? key}) : super(key: key);

  @override
  State<welcome_page> createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
      child: Column(
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: front_image()),
        ],
      ),
    ));
  }
}
