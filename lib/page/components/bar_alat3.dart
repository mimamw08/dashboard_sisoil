import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class alat3 extends StatefulWidget {
  alat3({Key? key}) : super(key: key);

  @override
  State<alat3> createState() => _alat3State();
}

class _alat3State extends State<alat3> {
  Widget alat3({required Map alat_3}) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 150,
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
              width: 10,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'N: ' + alat_3['n'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'P: ' + alat_3['p'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'K:  ' + alat_3['k'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Moist: ' + alat_3['moisture'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'pH: ' + alat_3['ph'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Waktu: ' + alat_3['waktu'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    DatabaseReference reference = FirebaseDatabase.instance.ref('Alat_Ukur2/');
    Query dbref = reference.limitToLast(10);
    return Container(
      height: double.infinity,
      child: FirebaseAnimatedList(
        query: dbref,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          Map alat_3 = snapshot.value as Map;
          alat_3['key'] = snapshot.key;

          return alat3(alat_3: alat_3);
        },
      ),
    );
  }
}
