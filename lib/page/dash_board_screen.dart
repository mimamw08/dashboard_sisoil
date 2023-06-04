import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/controllers/controller.dart';
import 'package:dashboard_sisoil/page/components/dashboard_content.dart';
import 'package:flutter/material.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

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
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
