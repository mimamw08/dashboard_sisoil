import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/page/components/component_list.dart';
import 'package:dashboard_sisoil/page/components/component_prediksi.dart';
import 'package:dashboard_sisoil/page/components/profile_info.dart';
import 'package:dashboard_sisoil/page/components/users.dart';
import 'package:dashboard_sisoil/page/components/viewers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bar_alat1.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            ProfileInfo(),
            SizedBox(
              height: appPadding,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              if (!Responsive.isMobile(context))
                                SizedBox(
                                  width: appPadding,
                                ),
                              Expanded(
                                flex: 3,
                                child: viewers(),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            height: appPadding,
                          ),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                          Row(
                            children: [
                              if (!Responsive.isMobile(context))
                                SizedBox(
                                  width: appPadding,
                                ),
                              Expanded(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: component_list(),
                                  )),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            height: appPadding,
                          ),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
