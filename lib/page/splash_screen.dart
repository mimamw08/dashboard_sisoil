import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/service_auth/auth_sercive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  int splashtime = 3;
  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return authService().handleAuthState();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset("asset/images/lpdp.png"),
            ),
          ),
        ],
      )),
    );
  }
}
