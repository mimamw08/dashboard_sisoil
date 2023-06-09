import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';

class prediksi extends StatefulWidget {
  prediksi({Key? key}) : super(key: key);

  @override
  State<prediksi> createState() => _prediksiState();
}

class _prediksiState extends State<prediksi> {
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Prediksi',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [Text('%waktu'), Text('%hsl prediksi')],
                        )
                      ],
                    )),
            ],
          ),
        ),
      ],
    );
  }
}
