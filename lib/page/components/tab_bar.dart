import 'package:dashboard_sisoil/page/components/bar_alat1.dart';
import 'package:dashboard_sisoil/page/components/bar_alat2.dart';
import 'package:dashboard_sisoil/page/components/bar_alat3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';

class tab_bar extends StatefulWidget {
  tab_bar({Key? key}) : super(key: key);

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> with SingleTickerProviderStateMixin {
  late TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: appPadding),
          padding: EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(blurRadius: 1)]),
          child: Column(
            children: [
              SizedBox(
                width: appPadding,
              ),
              if (!Responsive.isMobile(context))
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: appPadding / 2),
                    child: Column(
                      children: [
                        if (!Responsive.isMobile(context))
                          SizedBox(
                            width: appPadding,
                          ),
                        Expanded(
                          flex: 3,
                          child: alat1(),
                        ),
                      ],
                    )),
            ],
          ),
        )
      ],
    );
  }
}
