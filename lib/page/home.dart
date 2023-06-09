import 'package:dashboard_sisoil/page/components/home_component.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/responsive.dart';
import 'components/drawer_menu.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 5,
              child: home_component(),
            )
          ],
        ),
      ),
    );
  }
}
