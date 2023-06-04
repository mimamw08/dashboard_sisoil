import 'package:dashboard_sisoil/constants/constants.dart';
import 'package:dashboard_sisoil/page/components/drawer_list_tile.dart';
import 'package:dashboard_sisoil/page/components/login.dart';
import 'package:dashboard_sisoil/service_auth/auth_sercive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(appPadding),
            child: Image.asset("asset/images/icon_logo.png"),
          ),
          DrawerListTile(
              title: 'Home', svgSrc: 'asset/icons/home.svg', tap: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'Statistics',
              svgSrc: 'asset/icons/Statistics.svg',
              tap: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'Logout',
              svgSrc: 'asset/icons/Logout.svg',
              tap: () {
                logout();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_page()));
              }),
        ],
      ),
    );
  }

  void logout() async {
    try {
      await FirebaseAuth.instance.signOut();

      Fluttertoast.showToast(msg: 'Berhasil Keluar');
    } catch (e) {}
  }
}
