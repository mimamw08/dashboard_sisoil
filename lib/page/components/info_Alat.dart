import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../constants/responsive.dart';

class info_alat extends StatefulWidget {
  info_alat({Key? key}) : super(key: key);

  @override
  State<info_alat> createState() => _info_alatState();
}

class _info_alatState extends State<info_alat> {
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
                        Text(
                          'Alat-1',
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          '%hslprediksi',
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    )),
            ],
          ),
        ),
        // Container(
        //   margin: EdgeInsets.only(left: appPadding),
        //   padding: EdgeInsets.symmetric(
        //     horizontal: appPadding,
        //     vertical: appPadding / 2,
        //   ),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(5),
        //       boxShadow: [BoxShadow(blurRadius: 1)]),
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         width: appPadding,
        //       ),
        //       if (!Responsive.isMobile(context))
        //         Padding(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: appPadding / 2),
        //             child: Column(
        //               children: [
        //                 Text(
        //                   'Alat-2',
        //                   style: TextStyle(
        //                     color: textColor,
        //                     fontWeight: FontWeight.w800,
        //                   ),
        //                 ),
        //                 Text(
        //                   '%hslprediksi',
        //                   style: TextStyle(
        //                     color: textColor,
        //                     fontWeight: FontWeight.w800,
        //                   ),
        //                 ),
        //               ],
        //             )),
        //     ],
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.only(left: appPadding),
        //   padding: EdgeInsets.symmetric(
        //     horizontal: appPadding,
        //     vertical: appPadding / 2,
        //   ),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(5),
        //       boxShadow: [BoxShadow(blurRadius: 1)]),
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         width: appPadding,
        //       ),
        //       if (!Responsive.isMobile(context))
        //         Padding(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: appPadding / 2),
        //             child: Column(
        //               children: [
        //                 Text(
        //                   'Alat-3',
        //                   style: TextStyle(
        //                     color: textColor,
        //                     fontWeight: FontWeight.w800,
        //                   ),
        //                 ),
        //                 Text(
        //                   '%hslprediksi',
        //                   style: TextStyle(
        //                     color: textColor,
        //                     fontWeight: FontWeight.w800,
        //                   ),
        //                 ),
        //               ],
        //             )),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
