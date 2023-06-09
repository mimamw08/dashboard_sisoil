import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';
import '../../keamanan/dekripsi.dart';

class infoProfile_home extends StatefulWidget {
  infoProfile_home({Key? key}) : super(key: key);

  @override
  State<infoProfile_home> createState() => _infoProfile_homeState();
}

class _infoProfile_homeState extends State<infoProfile_home> {
  String uid = FirebaseAuth.instance.currentUser!.uid;
  String cekUid = FirebaseAuth.instance.currentUser!.uid;
  DatabaseReference profil = FirebaseDatabase.instance.ref();

  var nama;
  var hsldekripnama;

  @override
  void initState() {
    profilberubah();
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
          child: Row(
            children: [
              SizedBox(
                width: appPadding,
              ),
              ClipRRect(
                child: Image.asset(
                  'asset/images/blank_picture.jpg',
                  height: 38,
                  width: 38,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              if (!Responsive.isMobile(context))
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: appPadding / 2),
                  child: Text(
                    'Selamat datang kembali, $hsldekripnama',
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }

  void profilberubah() {
    profil.child('user/datauser/$cekUid/').onValue.listen((event) {
      Map profiluser = event.snapshot.value as Map;
      profiluser.forEach((key, value) {
        setState(() {
          nama = profiluser['nama'];
          final key = 'ini kunci rahasia';
          final dekripnama = decryptAES(nama, key);
          hsldekripnama = dekripnama;
        });
      });
    });
  }
}
