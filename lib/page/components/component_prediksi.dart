import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';

class prediksi extends StatefulWidget {
  prediksi({Key? key}) : super(key: key);

  @override
  State<prediksi> createState() => _prediksiState();
}

class _prediksiState extends State<prediksi> {
  String waktu = '';
  String words = '';

  var numberdataN_alat2;
  var numberdataP_alat2;
  var numberdataK_alat2;

  var numberdataN_alat3;
  var numberdataP_alat3;
  var numberdataK_alat3;

  var word;
  @override
  void initState() {
    profilkepukK_alat2();
    profilkepukN_alat2();
    profilkepukP_alat2();

    profilkepukK_alat3();
    profilkepukN_alat3();
    profilkepukP_alat3();
    super.initState();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Prediksi Alat 2',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [
                            Text(
                              'Rekomendasi pupuk KCL sejumlah: $numberdataN_alat2 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Rekomendasi pupuk SP36 sejumlah: $numberdataP_alat2 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Rekomendasi pupuk Urea sejumlah: $numberdataK_alat2 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    )),
            ],
          ),
        ),
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
                          'Prediksi Alat 3',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: appPadding,
                        ),
                        Column(
                          children: [
                            Text(
                              'Rekomendasi pupuk KCL sejumlah: $numberdataN_alat3 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Rekomendasi pupuk SP36 sejumlah: $numberdataP_alat3 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Rekomendasi pupuk Urea sejumlah: $numberdataK_alat3 gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    )),
            ],
          ),
        ),
      ],
    );
  }

  void profilkepukN_alat2() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi1(alat2)/Penambahan pupuk KCL')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataN_alat2 = snapshot.value.toString();
        setState(() {});
      }
    });
  }

  void profilkepukP_alat2() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi1(alat2)/Penambahan pupuk SP36')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataP_alat2 = snapshot.value.toString();
        setState(() {});
      }
    });
  }

  void profilkepukK_alat2() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi1(alat2)/Penambahan pupuk Urea')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataK_alat2 = snapshot.value.toString();
        setState(() {});
      }
    });
  }

  void profilkepukN_alat3() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi2(alat3)/Penambahan pupuk KCL')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataN_alat3 = snapshot.value.toString();
        setState(() {});
      }
    });
  }

  void profilkepukP_alat3() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi2(alat3)/Penambahan pupuk SP36')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataP_alat3 = snapshot.value.toString();
        setState(() {});
      }
    });
  }

  void profilkepukK_alat3() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref
        .child('prediksi2(alat3)/Penambahan pupuk Urea')
        .onValue
        .listen((event) {
      final DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        numberdataK_alat3 = snapshot.value.toString();
        setState(() {});
      }
    });
  }
}
