import 'package:dashboard_sisoil/page/components/InfoProfile_home.dart';
import 'package:dashboard_sisoil/page/components/bar_alat1.dart';
import 'package:dashboard_sisoil/page/components/component_prediksi.dart';
import 'package:dashboard_sisoil/page/components/info_Alat.dart';
import 'package:dashboard_sisoil/page/components/tab_bar.dart';
import 'package:dashboard_sisoil/page/components/users.dart';
import 'package:dashboard_sisoil/page/components/viewers.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';

class home_component extends StatelessWidget {
  const home_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            infoProfile_home(),
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
                                child: info_alat(),
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
                                child: prediksi(),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(
                        width: appPadding,
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
