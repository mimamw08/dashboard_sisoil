import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class alat1 extends StatefulWidget {
  alat1({Key? key}) : super(key: key);

  @override
  State<alat1> createState() => _alat1State();
}

class _alat1State extends State<alat1> {
  Widget alat1({required Map alat_1}) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(appPadding),
            padding: const EdgeInsets.all(appPadding),
            height: appPadding,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  //offset: Offset(4, 4),
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Row(
              children: [
                // Image.asset('Asset/icon_logo.png'),
                SizedBox(
                  width: appPadding,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'N: ' + alat_1['N'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: appPadding,
                        ),
                        Text(
                          'P: ' + alat_1['P'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: appPadding,
                        ),
                        Text(
                          'K:  ' + alat_1['K'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: appPadding,
                        ),
                        Text(
                          'Moist: ' + alat_1['Moist'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'pH: ' + alat_1['pH'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Waktu: ' + alat_1['Waktu'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    DatabaseReference reference = FirebaseDatabase.instance.ref('Alat_Ukur1/');
    Query dbref = reference.limitToLast(10);
    return Container(
      height: double.infinity,
      child: FirebaseAnimatedList(
        query: dbref,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map alat_1 = snapshot.value as Map;
          alat_1['key'] = snapshot.key;

          return alat1(alat_1: alat_1);
        },
      ),
    );
  }
}
